# Overview of ACPI Component Architecture
## Navigation

- [Back to main page](index.md)

- Other articles in this section
    - [External documentation](acpica_documentation.md)
    - [Downloads](acpica_download.md)

## Overview
ACPI Component Architecture (ACPICA) is a reference implementation of
the Advanced Configuration and Power Interface (ACPI) specification.
This implementation simplifies complex ACPI operating system
implementations by integrating it directly as a kernel-resident
subsystem, without changes to the core ACPICA code.

- [Introduction to ACPI Architecture](https://cdrdv2.intel.com/v1/dl/getContent/772721)

## Why ACPICA?
With advanced power management (APM), power management is controlled by
the BIOS independently of the operating system. When BIOS settings are
exceeded, the BIOS turns off the screen or shuts down the hard drive.
This creates an imperfect power management policy because it requires
reimplementing the policy for each platform. Plug and play BIOS
(PNPBIOS) specification is also unreliable.

With ACPI, power management moves from the BIOS to the operating system. 

- An application can tell the operating system that the display is in
  use and change its power policy accordingly. 
- The operating system does not have the size limitation of the BIOS. 
- The ACPI system firmware describes the system\'s characteristics by
  placing data, organized into tables, into the main memory. 

ACPICA code is fairly mature and implements the following:

- An ACPI machine language (AML) interpreter
- A table manager
- A namespace manager
- A resource manager
- Fixed and general-purpose event support
- ACPI hardware support
- Support for the ACPI 6.6 specification

## How It Works
- ACPICA defines and implements a group of software components for
  both 32-bit and 64-bit platforms. 
- The architecture isolates all operating system dependencies to a
  relatively small translation or conversion layer (called the OS
  Services Layer).
- This isolation enables the bulk of the ACPICA code to be independent
  of any individual operating system.
- Requires no source code changes within the ACPICA code itself for
  new operating systems.

## What's Included
Major kernel-level components:
- AML Interpreter
- ACPI Table Manager
- ACPI Namespace Manager
- ACPI Resource Manager
- ACPI Fixed and General-Purpose Event Support
- ACPI Hardware Support
- AML Disassembler (optional)
- AML Debugger (optional)

User-space tools and utilities:
- ACPI Source Code Compiler & Disassembler (iASL)
- ACPI Simulator/Executer (AcpiExec)
- ACPI System Table dump to ASCII utility (AcpiDump)
- ACPI Table Extractor, inverse of AcpiDump (AcpiXtract)
- ACPI Help Utility (AcpiHelp)
- ACPI Binary Table Utility (AcpiBin)
- ACPICA Source Code Conversion Utility (AcpiSrc)
- ACPICA Example Code (AcpiExamples)

> [!NOTE]
> The ACPICA components run in both kernel mode and user mode.

## System Requirements
- Write operating systems in C (or able to interface to C code).
- Add ACPICA initialization calls into the startup routine.

For more details, see the [ACPI specifications](https://uefi.org/specifications).

## Environments
ACPICA is written in ANSI C and can be generated under many different
32-bit and 64-bit operating system development environments. Source code
packages are provided in UNIX format (.tar.gz and .zip), together with
prebuilt Linux binaries of the ACPICA utilities.

> [!NOTE]
> Windows source packages, Visual C++ project files and Windows binaries are
> no longer provided, starting with version 20260930.

There is no stand-alone Linux source code package since ACPICA updates
for Linux are provided periodically in patch form. The ACPICA subsystem
is modified to integrate smoothly with the Linux kernel source. This
includes conversion of the ACPICA source code to the Linux kernel coding
standard. In the Linux kernel, ACPICA is dual-licensed under the BSD-3-Clause
or GPL-2.0 licenses.

ACPICA is licensed under the
[BSD-3-Clause](https://github.com/open-acpica/acpica/blob/master/LICENSE.BSD-3-Clause)
or the
[GPL-2.0-only](https://github.com/open-acpica/acpica/blob/master/LICENSE.GPL-2.0-only)
license, at your option.

## News
| Date       | Description                                                                   |
| ---------- | ----------------------------------------------------------------------------- |
| 2026.09.30 | ACPICA is now licensed under BSD-3-Clause OR GPL-2.0-only                     |
| 2026.09.30 | Windows packages are discontinued; Linux binaries are published on GitHub     |
| 2026.09.30 | iASL: Added support for the KEYP, MISC and UBRT ACPI tables                   |
| 2025.12.12 | Many existing ACPI tables updated to follow the ACPI 6.6 specification        |
| 2024.08.27 | The ACPI Reduced Hardware mode now supports waking up from the S3 state fully |
| 2023.03.31 | iASL preprocessor now supports #define macros (single-line)                   |
| 2022.03.31 | All Windows binaries are now digitally signed                                 |
| 2021.12.17 | iASL: Added support for the NHLT, AGDI, and TDEL ACPI tables                  |
| 2021.06.04 | iASL: Added support for the PRMT, BDAT, RGRT, SVKL and IVRS ACPI tables.      |
| 2021.04.01 | ACPI 6.4 is now supported in ACPICA version 20210331.                         |


[View All Releases](https://github.com/open-acpica/acpica/releases)

## Support
For all ACPICA developer discussions, issues, and source code patches,
subscribe to this [discussion](https://github.com/open-acpica/acpica/discussions).

To report ACPICA kernel-resident subsystem and ACPICA tools or utility
issues, submit your issue on [GitHub](https://github.com/open-acpica/acpica/issues/). 

## FAQ
### What is AML? What is ASL?
AML stands for ACPI Machine Language. This is a binary pseudo-code
format, which the operating system's ACPI AML interpreter parses to
discover the machine's properties. Since most BIOS implementers do not
like to write in binary, the ACPI specification also includes ASL (ACPI
Source Language). System designers describe their system in ASL. It is
then compiled into AML and included in the system's flash BIOS. Then,
on boot, the BIOS startup code copies it into RAM, where it can be
interpreted by the OS's ACPI AML interpreter.

### How often is ACPICA updated?
ACPICA is actively maintained and updated. Releases occur approximately
every three to four months and contain new features and bug fixes.
ACPICA also closely tracks new releases of the ACPI specification.

### Which operating systems use ACPICA to enable ACPI?
Except for Windows, almost all operating systems use the ACPICA code
base to enable ACPI for power management and configuration, as well as
the iASL compiler to write BIOS implementations.

### How is the ACPICA source code licensed?
Starting with version 20260930, ACPICA is licensed under the BSD-3-Clause
or the GPL-2.0-only license, at your option. Each source file carries the
`SPDX-License-Identifier: BSD-3-Clause OR GPL-2.0-only` header and the full
license texts are included in the
[LICENSE.BSD-3-Clause](https://github.com/open-acpica/acpica/blob/master/LICENSE.BSD-3-Clause)
and
[LICENSE.GPL-2.0-only](https://github.com/open-acpica/acpica/blob/master/LICENSE.GPL-2.0-only)
files.

### What is the implicit return issue?
The AML definition blocks in some systems contain an error, where the
AML return operator is not used to return a value from a control method.
Some ACPI-defined control methods (for example, \_STA) must always
return a value. Due to errata, this bug does not manifest itself on
Windows' ACPI implementations and therefore was not detected when OEMs
tested their systems using that OS. ACPICA implements a "slack mode"
that enables these implicit returns.
