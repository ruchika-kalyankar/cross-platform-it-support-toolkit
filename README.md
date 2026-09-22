# Cross-Platform IT Support Diagnostic Toolkit

> **Work in Progress** — Personal IT support, endpoint diagnostics, automation, and security learning project.

## Overview

The **Cross-Platform IT Support Diagnostic Toolkit** is a personal portfolio project designed to demonstrate practical IT support, endpoint troubleshooting, automation, and security skills across Windows and macOS.

The project is being developed as a hands-on lab to turn my existing IT support experience, software testing background, and endpoint management/security training into practical technical projects that can be demonstrated through GitHub.

## Current Project Status

### Windows

The Windows diagnostic toolkit currently includes:

* System information collection
* CPU usage diagnostics
* Memory usage diagnostics
* Disk space diagnostics
* Network adapter status
* IP configuration
* Default gateway testing
* Internet connectivity testing
* DNS resolution testing
* Network health summary
* Overall diagnostic health summary
* NORMAL / WARNING / CRITICAL / CHECK status logic
* Git/GitHub version control

### macOS

The macOS portion is planned as a Bash-based diagnostic toolkit using my iMac as a personal lab environment.

Planned areas include:

* macOS system information
* CPU and memory diagnostics
* Disk health and free-space checks
* Network diagnostics
* macOS software/update checks
* FileVault status
* Firewall status
* Gatekeeper status
* System Integrity Protection (SIP)
* Local user and administrator checks
* Launch agents and daemons
* macOS logs
* Security baseline checks

## Existing Skills & Certifications

I already have formal training and certification knowledge in Apple endpoint management and security.

### Jamf Pro

I have completed **Jamf Pro training assignments and earned Jamf Pro certification**.

Through the coursework and assignments, I developed knowledge of concepts including:

* Apple device management
* Device enrollment
* Configuration profiles
* Policies
* Smart Groups
* Inventory management
* Extension Attributes
* Application and software management
* macOS endpoint administration

This project will extend that knowledge by creating practical macOS scripts and documenting how they could be incorporated into endpoint-management workflows.

### Jamf Protect

I have also completed **Jamf Protect training assignments and earned Jamf Protect certification**.

My training covered concepts related to:

* macOS endpoint security
* Security monitoring
* Threat detection concepts
* Security policies
* Endpoint security configuration
* Detection and response workflows
* Integration between endpoint security and device management

The project will use these concepts to build a practical macOS security diagnostic and baseline-checking lab.

> **Important distinction:** My Jamf certifications demonstrate completed training and knowledge of the Jamf Pro and Jamf Protect platforms. This GitHub project is used to demonstrate additional hands-on scripting, troubleshooting, security analysis, and endpoint-management skills.

## Project Goals

The goal is to build the toolkit incrementally across multiple operating systems.

### Phase 1 — Windows Diagnostics

*  System information
*  CPU diagnostics
*  Memory diagnostics
*  Disk diagnostics
*  Network diagnostics
*  Overall diagnostic summary
*  Windows services
*  Windows Update health
*  Device and driver diagnostics
*  Event log diagnostics
*  Structured reports
*  Automated testing

### Phase 2 — macOS Diagnostics

*  macOS system information
*  CPU diagnostics
*  Memory diagnostics
*  Disk diagnostics
*  Network diagnostics
*  Software/update diagnostics
*  Security baseline checks
*  macOS logs
*  Automated reports
*  Testing

### Phase 3 — Linux Diagnostics

Linux diagnostics will be developed using Bash and a local Linux environment such as WSL.

Planned areas include:

* System information
* CPU and memory
* Disk usage
* Network configuration
* Connectivity
* Services
* Logs
* Package/update status
* Security checks

### Phase 4 — Endpoint Management Concepts

The project will document practical endpoint-management workflows based on my existing Jamf Pro knowledge.

Planned areas include:

* Extension Attribute examples
* Smart Group designs
* Policy workflows
* Configuration profile designs
* macOS compliance checks
* Endpoint inventory concepts
* Troubleshooting workflows

Where a real Jamf environment is not available, these items will be clearly identified as **designs, scripts, or simulations** rather than production Jamf administration.

### Phase 5 — Endpoint Security

Planned security-focused work includes:

* FileVault checks
* Firewall checks
* Gatekeeper checks
* SIP checks
* macOS update checks
* Local administrator detection
* Sharing-service checks
* Security baseline reporting
* Endpoint investigation workflows
* Jamf Protect-related security workflow documentation

### Phase 6 — AI-Assisted Diagnostics

A future phase may use Python and AI techniques to interpret diagnostic results and produce technician-friendly troubleshooting recommendations.

The goal is to explore how AI could assist IT support technicians while keeping the underlying diagnostic evidence visible and understandable.

## Technology Stack

### Current

* PowerShell
* Windows
* Git
* GitHub

### Planned

* Bash
* macOS
* Linux / WSL
* Python
* Jamf Pro concepts
* Jamf Protect concepts
* Endpoint security
* AI-assisted diagnostics

## Project Structure

cross-platform-it-support-toolkit/
│
├── windows/
│   ├── scripts/
│   ├── tests/
│   └── reports/
│
├── macos/
│   ├── scripts/
│   ├── security/
│   ├── tests/
│   └── reports/
│
├── linux/
│   ├── scripts/
│   ├── security/
│   ├── tests/
│   └── reports/
│
├── jamf/
│   ├── extension-attributes/
│   ├── smart-groups/
│   ├── policies/
│   ├── configuration-profiles/
│   └── documentation/
│
└── README.md

---

## Example Windows Output

========================================
 Windows System Information
========================================
Computer Name: DESKTOP
Operating System: Windows
Windows Version: 10/11
Manufacturer: Example
Model: Example

CPU Usage:
25%
CPU Status: NORMAL

Memory Usage:
61%
Memory Status: NORMAL

Disk Usage:
Free Disk Space: 35%
Disk Status: NORMAL

Network Health Summary:
Network Status: NORMAL

========================================
 Overall Diagnostic Summary
========================================
CPU: 25% - NORMAL
Memory: 61% - NORMAL
Disk Free: 35% - NORMAL
Network: NORMAL

Overall Status: HEALTHY
========================================

*Example output only. Values will vary by system.*

---

## Learning & Portfolio Approach

This project is designed around **progressive hands-on learning**.

Instead of simply listing technologies on a resume, each major skill will be supported by practical work such as:

* Scripts
* Diagnostic outputs
* Test cases
* Troubleshooting scenarios
* Documentation
* Security checks
* Automation
* Git commits
* GitHub project history

The objective is to demonstrate not only that I have studied a technology, but also how I apply technical concepts to real-world IT support and endpoint troubleshooting scenarios.

## Lab Environment

The project is being developed primarily using personal hardware and free/open-source tools where possible.

Current lab environments include:

* Windows PC
* iMac
* Linux through WSL
* Git
* GitHub
* PowerShell
* Bash
* Python

## Future Direction

The long-term goal is to expand this project from a basic diagnostic toolkit into a broader **IT support and endpoint operations platform** covering:

**Windows → macOS → Linux → Endpoint Management → Endpoint Security → Automation → AI-Assisted Diagnostics**

The project will evolve alongside my professional development toward IT support, cloud, cybersecurity, and AI-related roles.
