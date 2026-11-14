#!/usr/bin/env python3
"""Read-only AVB descriptor and recovery-image consistency analysis for A26."""
from __future__ import annotations
import hashlib, struct, tarfile
from pathlib import Path

ROOT=Path(__file__).resolve().parents[2]
BACKUP=ROOT/"a26/recovery/boot-chain-backup"
STOCK=ROOT/"a26/recovery/stock-recovery-backup/recovery-stock.img"
TWRP_TAR=ROOT/"a26/recovery/twrp-3.7.1_12-1-a26x.img.tar"
REPORT=ROOT/"a26/recovery/A26_AVB_DESCRIPTOR_REPORT_2026-11-14_RU.md"

def u32(b,o): return struct.unpack_from(">I",b,o)[0]
def u64(b,o): return struct.unpack_from(">Q",b,o)[0]

def parse_vbmeta(data, label):
    if data[:4]!=b"AVB0" or len(data)<256:
        return {"label":label,"error":"AVB0 header missing","size":len(data)}
    auth=u64(data,12); aux=u64(data,20); alg=u32(data,28)
    doff=u64(data,96); dsize=u64(data,104)
    rollback=u64(data,112); flags=u32(data,120); rloc=u32(data,124)
    start=256+auth+doff; end=min(len(data),start+dsize); pos=start
    ds=[]
    while pos+16<=end:
        tag=u64(data,pos); following=u64(data,pos+8); total=16+following
        if total<16 or pos+total>end:
            ds.append({"tag":tag,"error":"invalid descriptor length"}); break
        d=data[pos:pos+total]; item={"tag":tag}
        if tag==1 and len(d)>=132:
            image_size=u64(d,16); hash_alg=d[24:56].split(b"\0",1)[0].decode("ascii","replace")
            n,salt_len,digest_len,dflags=struct.unpack_from(">IIII",d,56)
            var=132
            item.update(type="hash",image_size=image_size,hash_algorithm=hash_alg,
                partition=d[var:var+n].decode("utf-8","replace"),
                salt=d[var+n:var+n+salt_len],
                digest=d[var+n+salt_len:var+n+salt_len+digest_len],
                flags=dflags)
        elif tag==2 and len(d)>=180:
            n,salt_len,digest_len,dflags=struct.unpack_from(">IIII",d,104)
            var=180
            item.update(type="hashtree",partition=d[var:var+n].decode("utf-8","replace"),flags=dflags)
        elif tag==4 and len(d)>=92:
            rloc2,n,keylen,dflags=struct.unpack_from(">IIII",d,16)
            var=92
            item.update(type="chain",partition=d[var:var+n].decode("utf-8","replace"),rollback_index_location=rloc2,flags=dflags)
        else:
            item["type"]={0:"property",3:"cmdline"}.get(tag,f"tag-{tag}")
        ds.append(item); pos+=total
    return {"label":label,"size":len(data),"algorithm_type":alg,"rollback_index":rollback,
            "flags":flags,"rollback_index_location":rloc,"descriptors":ds}

def image_footer(data):
    if len(data)<64 or data[-64:-60]!=b"AVBf": return {"present":False}
    f=data[-64:]
    return {"present":True,"version_major":u32(f,4),"version_minor":u32(f,8),
            "original_image_size":u64(f,12),"vbmeta_offset":u64(f,20),"vbmeta_size":u64(f,28)}

def digest_match(data, desc):
    size=desc.get("image_size",0); salt=desc.get("salt",b""); alg=desc.get("hash_algorithm","sha256")
    if not size or size>len(data): return None
    try: return hashlib.new(alg,salt+data[:size]).digest()==desc.get("digest")
    except Exception: return None

def main():
    vbmetas=[]
    for p in (BACKUP/"vbmeta.img",BACKUP/"vbmeta_system.img"):
        if p.exists(): vbmetas.append(parse_vbmeta(p.read_bytes(),str(p.relative_to(ROOT))))
    recovery=[]
    if STOCK.exists():
        data=STOCK.read_bytes()
        recovery.append(("Stock recovery partition dump",data))
    tar_members=[]
    if TWRP_TAR.exists():
        with tarfile.open(TWRP_TAR,"r:*") as tf:
            tar_members=tf.getmembers()
            for m in tar_members:
                if m.isfile() and (m.name.endswith("recovery.img") or m.name.endswith("recovery.img.lz4")):
                    f=tf.extractfile(m)
                    if f: recovery.append((f"TWRP TAR member {m.name}",f.read()))
    out=[
      "# A26 AVB / recovery descriptor analysis — 2026-11-14","",
      "Read-only analysis of the boot-chain backups already stored in this repository. No device access or partition writes.","",
      "## 1. Signed vbmeta inventory",""
    ]
    for v in vbmetas:
        out += [f"### {v['label']}",f"- Size: {v.get('size')} bytes",
                f"- AVB algorithm type: {v.get('algorithm_type')}",
                f"- Rollback index: {v.get('rollback_index')}",
                f"- Flags: {v.get('flags')}","- Descriptors:"]
        for d in v.get("descriptors",[]):
            out.append(f"  - tag={d.get('tag')} type={d.get('type')} partition={d.get('partition')} image_size={d.get('image_size')} hash={d.get('hash_algorithm')} flags={d.get('flags')}")
        out.append("")
    out += ["## 2. TWRP TAR members",""]+[f"- {m.name}: {m.size} bytes" for m in tar_members]
    out += ["","## 3. Recovery image comparison",""]
    for label,data in recovery:
        footer=image_footer(data)
        out += [f"### {label}",f"- Size: {len(data)} bytes",
                f"- SHA-256: {hashlib.sha256(data).hexdigest()}",
                f"- AVB footer present: {footer.get('present')}"]
        if footer.get("present"):
            out += [f"- Footer original image size: {footer.get('original_image_size')}",
                    f"- Embedded vbmeta offset/size: {footer.get('vbmeta_offset')} / {footer.get('vbmeta_size')}"]
        for v in vbmetas:
            for d in v.get("descriptors",[]):
                if d.get("partition")=="recovery" and d.get("type")=="hash":
                    out.append(f"- Stock vbmeta recovery hash descriptor: image_size={d.get('image_size')} algorithm={d.get('hash_algorithm')} digest={d.get('digest',b'').hex()}")
                    out.append(f"- This image matches the signed stock recovery digest: {digest_match(data,d)}")
        out.append("")
    out += [
      "## 4. Interpretation guardrails","",
      "- If signed stock vbmeta contains a recovery hash descriptor and the TWRP image does not match it, a locked AVB chain cannot accept TWRP as the stock recovery image.",
      "- If no recovery descriptor exists, that does not prove Samsung SBoot will boot an unsigned recovery; separate image-authentication checks may apply.",
      "- A successful root-level dd write proves only that Android can write the block device, not that SBoot will execute the image.",
      "- Do not write recovery while the bootloader remains locked.",""
    ]
    REPORT.write_text("\n".join(out),encoding="utf-8")
    print(f"Wrote {REPORT.relative_to(ROOT)} ({REPORT.stat().st_size} bytes)")
    print("vbmeta files parsed:",len(vbmetas),"recovery images:",len(recovery))

if __name__=="__main__": main()
