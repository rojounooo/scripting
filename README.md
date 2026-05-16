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

Scripts are written and tested across a physical machine and a local VirtualBox lab.

| Device | Role | OS | RAM | Disk | Type |
|---|---|---|---|---|---|
| `GRAM13` | Daily driver / Bash + Python | EndeavourOS (KDE Plasma 6) | 16 GB | 512 GB | Physical machine |
| `DC01` | Domain Controller | Windows Server 2022 | 2 GB | 50 GB | VirtualBox VM |
| `CLIENT01` | Managed Endpoint | Windows 10 Pro | 2 GB | 50 GB | VirtualBox VM |

**Tooling**

| Tool | Version / Source |
|---|---|
| VirtualBox | 7.x |
| Windows Server 2022 | ISO — [Microsoft Evaluation Center](https://www.microsoft.com/en-gb/evalcenter/evaluate-windows-server-2022) |
| Windows 10 Pro | ISO — [Microsoft Media Creation Tool](https://www.microsoft.com/en-gb/software-download/windows10) |
| PowerShell | 7.x — [github.com/PowerShell/PowerShell](https://github.com/PowerShell/PowerShell) |
| Python | 3.10+ — [python.org](https://www.python.org/) |

> PowerShell 5.1 is built into Windows and sufficient for most scripts here. PowerShell 7+ is noted where used.

---

## Repository Structure

Each topic area has its own directory containing scripts (`.sh`, `.ps1`, `.py`), a `README.md` explaining the concepts, and notes on anything worth documenting.

```
.
├── 00-fundamentals/
│   ├── bash/
│   ├── powershell/
│   └── python/
├── 01-users/
│   ├── bash/
│   ├── powershell/
│   └── python/
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
├── resources.md
├── LICENSE
└── README.md
```

---

## Progress

- [ ] 00 · Fundamentals
- [ ] 01 · User Management
- [ ] 02 · Networking
- [ ] 03 · Logs
- [ ] 04 · Disk & Processes
- [ ] 05 · Helpdesk Automation

---

## Licence

This repository is licensed under the [MIT License](./LICENSE). You are free to use, adapt, and share the scripts and notes within it.
