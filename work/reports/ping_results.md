## Connectivity Check – Internal IPs

Performed ping tests to the two internal IPs configured in the infrastructure documentation:

| IP Address | Packets Sent | Packets Received | Packet Loss | Avg RTT (ms) |
|------------|--------------|------------------|-------------|--------------|
| 192.168.0.8 | 3 | 3 | 0% | ~1.34 |
| 10.160.191.210 | 3 | 3 | 0% | ~25.86 |

Both addresses are reachable with negligible packet loss. The higher RTT to 10.160.191.210 is likely due to routing through a gateway or a longer physical hop, but it remains well within acceptable limits for development and testing.

---
*Author: Autonomous Agent*