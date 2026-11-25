# System Profile

| Component | Specification |
|---|---|
| CPU Model | AMD Ryzen 7 7445HS w/ Radeon 740M Graphics |
| CPU Cores | 6 physical cores, 12 logical CPUs |
| Total RAM | 7.4 GiB |
| Available RAM | 6.8 GiB |
| Primary Storage | 1 TB virtual disk (sdd, WSL root), stored on a 475 GB NVMe SSD (C:) |
| Operating System | Ubuntu 26.04.1 LTS (WSL2) |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |

## Binary Number Representation

### Decimal 75 to Binary (repeated division by 2)

| Step | Division | Quotient | Remainder |
|---|---|---|---|
| 1 | 75 ÷ 2 | 37 | 1 |
| 2 | 37 ÷ 2 | 18 | 1 |
| 3 | 18 ÷ 2 | 9 | 0 |
| 4 | 9 ÷ 2 | 4 | 1 |
| 5 | 4 ÷ 2 | 2 | 0 |
| 6 | 2 ÷ 2 | 1 | 0 |
| 7 | 1 ÷ 2 | 0 | 1 |

Reading the remainders from bottom to top: **75 = 1001011** in binary.

### Binary 110101 to Decimal (positional weights)

| Bit | 1 | 1 | 0 | 1 | 0 | 1 |
|---|---|---|---|---|---|---|
| Weight | 32 | 16 | 8 | 4 | 2 | 1 |

110101 = (1×32) + (1×16) + (0×8) + (1×4) + (0×2) + (1×1) = 32 + 16 + 0 + 4 + 0 + 1 = **53**

### Why do computers use binary?
Computers use binary because electronic circuits have two reliable states (ON and OFF), which makes the hardware simple, fast and less error-prone.
