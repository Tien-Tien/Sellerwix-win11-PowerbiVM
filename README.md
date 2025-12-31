
Author: Nguyen Tien
Company: Sellingwix
Date: 31/12/2025
Version: 0.1

win-vm-deployer
Overview

win-vm-deployer is a macOS-based automation software developed by Sellingwix that simplifies the creation and configuration of Windows virtual machines on Apple computers.
The software provisions a fully functional Windows environment and automatically installs and configures Microsoft Power BI Desktop, allowing users to start working immediately with minimal manual intervention.

This solution is designed for professionals and organizations that require Windows-only tooling, such as Microsoft Power BI, while operating primarily in a macOS environment.

Key Features

🚀 Automated creation of Windows virtual machines on macOS

🪟 End-to-end Windows OS installation and initialization

📊 Automatic installation of Microsoft Power BI Desktop

⚙️ Pre-configured Windows environment optimized for analytics workloads

👤 Configurable local Windows user provisioning

🖥️ Seamless integration with supported macOS virtualization platforms

📦 Repeatable, consistent, and scalable VM deployments

Supported Platforms
Host Operating System

macOS (Intel and Apple Silicon supported, depending on virtualization backend)

Guest Operating System

Windows 11 (primary target)

Windows 10 (optional / configurable)

Architecture Overview
macOS Host
│
├── win-vm-deployer (Sellingwix)
│   ├── VM Provisioning Engine
│   ├── Windows Installation Automation
│   ├── Post-Installation Configuration
│   └── Application Deployment (Power BI Desktop)
│
└── Windows Virtual Machine
    ├── Windows OS
    ├── System Configuration
    └── Microsoft Power BI Desktop

Installation
Prerequisites

macOS with virtualization support enabled

Supported virtualization platform (e.g. UTM, Apple Hypervisor, or equivalent)

Minimum recommended hardware:

8 GB RAM (16 GB recommended)

40 GB free disk space

Active internet connection for Windows and Power BI installation

Installing win-vm-deployer

Download the win-vm-deployer installer from Sellingwix

Install the application on macOS

Grant required permissions (disk access, virtualization, networking)

Launch win-vm-deployer

Usage

Open win-vm-deployer

Select Create New Windows VM

Configure VM parameters:

Windows version

CPU cores

Memory allocation

Disk size

Start the deployment process

win-vm-deployer will automatically:

Create and initialize the virtual machine

Install Windows

Apply baseline OS configuration

Install Microsoft Power BI Desktop

Once completed, access the Windows VM and start using Power BI

Microsoft Power BI Integration

Power BI Desktop is installed automatically from official Microsoft sources

Microsoft Store authentication may be required on first launch

Installation is validated before the VM is marked as ready

Configuration Options

Windows local user name and password

VM resource allocation (CPU, RAM, disk)

Network mode (NAT / Bridged)

Optional Windows auto-login

Optional post-install scripts

Security Considerations

Windows virtual machines are isolated from the macOS host

No Windows credentials are stored outside the VM

Users are responsible for Windows and Power BI licensing compliance

All software installations follow official vendor distribution channels

Troubleshooting
Issue	Possible Cause	Resolution
VM fails to start	Virtualization disabled	Enable virtualization support in macOS
Power BI not installed	Network issue during deployment	Re-run post-install configuration
Performance issues	Insufficient VM resources	Increase CPU or RAM allocation
Limitations

Requires a valid Windows license

Power BI Desktop availability depends on Microsoft regional policies

Performance is dependent on host system capabilities

Roadmap

Automated Windows updates

Power BI version pinning and lifecycle control

VM template export/import

Enterprise policy enforcement

Centralized VM fleet management

Support

For support, bug reports, or feature requests:

Sellingwix Support Team
📧 support@sellingwix.com

🌐 https://www.sellingwix.com

License

© Sellingwix. All rights reserved.
win-vm-deployer is distributed under a commercial license.
Unauthorized redistribution or modification is prohibited.
