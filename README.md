# IT Support Scripting
> **Self-directed** · Bash · PowerShell · Python

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

## Why
To build practical scripting skills for first-line IT support across Linux, Windows, and Active Directory environments. Covering the fundamentals of Bash, PowerShell, and Python side by side, then applying them to real support tasks — user management, networking, log analysis, disk and process monitoring, and helpdesk automation.

---

## Notes and Gotchas

Throughout each section you will find `> **Note:**` and `> **Gotcha:**` callouts. These are not copied from documentation — they are things I ran into while writing and testing scripts, documented as I went. They reflect real troubleshooting experience rather than a clean walkthrough.

---

## Requirements

| | Minimum | Recommended |
|---|---|---|
| **OS** | Windows 10 / Any Linux distro | Windows 10/11 + Linux (dual or VM) |
| **RAM** | 8 GB | 16 GB |
| **Storage** | 40 GB free | 80 GB+ free |
| **CPU** | Dual-core, 64-bit | Quad-core, 64-bit |
| **Virtualisation** | VirtualBox | VirtualBox |
| **Shell** | Bash 5+, PowerShell 5.1+, Python 3.10+ | PowerShell 7+ |

---

## Lab Environment

Scripts are written and tested on a desktop workstation running VirtualBox, with an Ubuntu Server VM for Bash and Python, and a Windows AD lab for PowerShell. A Windows laptop assigned to the domain is used in place of a Client VM

| Device | Role | OS | RAM | Disk | Type |
|---|---|---|---|---|---|
| `HOST` | Workstation / Hypervisor | Windows 11 Pro | 32 GB | 2.5 TB SSD | Physical — AMD Ryzen 9 5900X |
| `UBUNTU-SRV` | Bash + Python environment | Ubuntu Server 24.04.4 LTS | 4 GB | 80 GB | VirtualBox VM |
| `DC01` | Domain Controller | Windows Server 2022 Evaluation | 2 GB | 50 GB | VirtualBox VM |
| `CLIENT01` | Managed Endpoint | Windows 11 Pro | 16 GB | 512 GB | VirtualBox VM |

**Tooling**

| Tool | Version / Source |
|---|---|
| VirtualBox | 7.x |
| Ubuntu Server | 24.04.4 LTS — [ubuntu.com/download/server](https://ubuntu.com/download/server) |
| Windows Server 2022 | Evaluation ISO — [Microsoft Evaluation Center](https://www.microsoft.com/en-gb/evalcenter/evaluate-windows-server-2022) |
| Windows 11 Pro | ISO — [Microsoft Media Creation Tool](https://www.microsoft.com/en-gb/software-download/windows11) |
| PowerShell | 7.x — [github.com/PowerShell/PowerShell](https://github.com/PowerShell/PowerShell) |
| Python | 3.10+ — [python.org](https://www.python.org/) |

> WSL (Windows Subsystem for Linux) can be used as an alternative to the Ubuntu VM for Bash and Python scripts on the host directly.


---

## Repository Structure

Each topic area has its own directory containing scripts (`.sh`, `.ps1`, `.py`), a `README.md` explaining the concepts, and notes on anything worth documenting.

```
.
├── 00-fundamentals/
│   ├── fundamentals.md
├── 01-users/
│   ├── bash/
│   ├── powershell/
├── 02-networking/
│   ├── bash/
│   ├── powershell/
│   └── python/
├── 03-logs/
│   ├── bash/
│   ├── powershell/
│   └── python/
├── 04-disk-and-processes/
│   ├── bash/
│   ├── powershell/
│   └── python/
├── 05-helpdesk-automation/
│   ├── bash/
│   ├── powershell/
│   └── python/
├── LICENSE
└── README.md
```

---

## Progress

- [x] 00 · Fundamentals
- [x] 01 · User Management
- [x] 02 · Networking
- [-] 03 · Logs
- [ ] 04 · Disk & Processes
- [ ] 05 · Helpdesk Automation

---

## Licence

This repository is licensed under the [MIT License](./LICENSE). You are free to use, adapt, and share the scripts and notes within it.
