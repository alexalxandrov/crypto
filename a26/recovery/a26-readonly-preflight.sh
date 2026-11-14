#!/system/bin/sh
# Samsung Galaxy A26 5G (SM-A266B) read-only recovery / kexec preflight.
# No writes, flashes, reboot commands, or changes to Android settings.
# Run from a root shell in Termux: su -c sh /sdcard/Download/a26-readonly-preflight.sh

set +e

section() { printf '\n===== %s =====\n' "$1"; }
showprop() {
  key="$1"
  value="$(getprop "$key" 2>/dev/null)"
  [ -n "$value" ] && printf '%s=%s\n' "$key" "$value" || printf '%s=<empty>\n' "$key"
}

section "IDENTITY"
id
uname -a
showprop ro.product.model
showprop ro.product.device
showprop ro.build.fingerprint
showprop ro.build.version.release
showprop ro.build.version.sdk
showprop ro.bootloader

section "BOOT / AVB STATE"
showprop ro.boot.flash.locked
showprop ro.boot.vbmeta.device_state
showprop ro.boot.verifiedbootstate
showprop ro.boot.other.locked
showprop ro.boot.warranty_bit
showprop ro.boot.verifiedbootstate
showprop sys.oem_unlock_allowed
showprop persist.sys.oem_unlock_allowed
if command -v settings >/dev/null 2>&1; then
  printf 'settings.global.oem_unlock_allowed='
  settings get global oem_unlock_allowed 2>/dev/null
fi

section "KERNEL CONFIG"
if [ -r /proc/config.gz ]; then
  echo "CONFIG_SOURCE=/proc/config.gz"
  if command -v zcat >/dev/null 2>&1; then
    zcat /proc/config.gz 2>/dev/null | grep -E '^(CONFIG_(KEXEC|KEXEC_FILE|KEXEC_CORE|KEXEC_SIG|KEXEC_SIG_FORCE|IKCONFIG|IKCONFIG_PROC|MODULES)=|# CONFIG_(KEXEC|KEXEC_FILE|KEXEC_CORE|KEXEC_SIG|MODULES) is not set)'
  elif command -v gzip >/dev/null 2>&1; then
    gzip -dc /proc/config.gz 2>/dev/null | grep -E '^(CONFIG_(KEXEC|KEXEC_FILE|KEXEC_CORE|KEXEC_SIG|KEXEC_SIG_FORCE|IKCONFIG|IKCONFIG_PROC|MODULES)=|# CONFIG_(KEXEC|KEXEC_FILE|KEXEC_CORE|KEXEC_SIG|MODULES) is not set)'
  else
    echo "gzip/zcat not available"
  fi
else
  echo "/proc/config.gz unavailable"
fi

section "KEXEC INTERFACES"
if [ -r /sys/kernel/kexec_loaded ]; then
  printf '/sys/kernel/kexec_loaded='
  cat /sys/kernel/kexec_loaded
else
  echo "/sys/kernel/kexec_loaded absent"
fi
if command -v kexec >/dev/null 2>&1; then
  command -v kexec
  kexec --version 2>&1 | head -n 2
else
  echo "kexec userspace tool absent"
fi

section "RECOVERY BLOCK DEVICE (READ-ONLY METADATA)"
for p in /dev/block/by-name/recovery /dev/block/bootdevice/by-name/recovery /dev/block/sda18; do
  if [ -e "$p" ]; then
    ls -l "$p"
    readlink -f "$p" 2>/dev/null
    if command -v blockdev >/dev/null 2>&1; then
      blockdev --getsize64 "$p" 2>/dev/null
    fi
  fi
done

section "OEM LOCK SERVICE DISCOVERY"
if command -v service >/dev/null 2>&1; then
  service list 2>/dev/null | grep -i -E 'oem|lock|boot' | head -n 40
fi

section "SECURITY MODE"
if command -v getenforce >/dev/null 2>&1; then getenforce; fi
echo "END: read-only preflight complete"
