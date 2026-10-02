# Download for ACPI Component Architecture (ACPICA)
## Navigation

- [Back to main page](index.md)

- Other articles in this section
    - [Project overview](acpica_overview.md)
    - [External documentation](acpica_documentation.md)

## Source Code Tree

[Release Notes (September 2026)](https://github.com/open-acpica/acpica/releases/tag/20260930)

The entire source code for the ACPICA project is maintained under the
Git version control system in a single repository.

> [!NOTE]
> Depending on your needs, the head of the Git tree may or may
> not be appropriate. The Git tree is a working tree that grows as the
> next full release of ACPICA is constructed. Commits to the tree are made
> as individual bug fixes and features are completed.

The current head of the Git tree is not fully evaluated and may or may
not work. Please use the latest release instead.

[View the ACPICA Source Code on GitHub](https://github.com/open-acpica/acpica/)

### Direct Access to the Public ACPICA Git Repository
The Git repository can be directly accessed through
https://github.com/open-acpica/acpica.git

For example:
```
git clone https://github.com/open-acpica/acpica.git
```

## UNIX Source Code Packages
All packages are attached to the
[latest GitHub release](https://github.com/open-acpica/acpica/releases/latest).
ACPICA is licensed under the BSD-3-Clause or the GPL-2.0-only license, and
both license texts are included in the packages.

UNIX Format Source Code and Build Environment
([.tar.gz, 1.53 MB](https://github.com/open-acpica/acpica/releases/download/20260930/acpica-unix-20260930.tar.gz),
[.zip, 1.86 MB](https://github.com/open-acpica/acpica/releases/download/20260930/acpica-unix-20260930.zip))

Includes the entire ACPICA source, makefiles, and ACPI utilities.

UNIX Format ASL Test Suite
([.tar.gz, 2.03 MB](https://github.com/open-acpica/acpica/releases/download/20260930/acpitests-unix-20260930.tar.gz),
[.zip, 3.66 MB](https://github.com/open-acpica/acpica/releases/download/20260930/acpitests-unix-20260930.zip))

Test suite used to validate ACPICA. This includes ASL files and project
makefiles.

> [!NOTE]
> The "Source code" archives that GitHub generates automatically for each
> release are snapshots of the Git tree. They differ in layout from the
> acpica-unix packages above.

The UNIX or Linux versions of the user-space ACPICA utilities can be
built from the UNIX ACPICA source code package using the following
instructions.

Requirements for generating ACPICA tools from source code:

-   Default required C compiler:
    -   GNU Compiler Collection (GCC)\*: version 4 or later
-   For iASL, these versions of Flex and Bison are required:
    -   Flex: version 2.5.3 or later
    -   Bison: version 2.4.1 or later
-   iASL has been generated with these recent versions of Flex and
    Bison:
    -   Flex: version 2.6.4
    -   Bison: version 3.8.2

Download and then unpack the UNIX Format Source Code and Build
Environment package:
```
tar xzf acpica-unix-VERSION.tar.gz
```

To generate all of the tools:

```
cd acpica-unix-VERSION
make clean
make
```

To generate an individual tool (examples):
```
cd acpica-unix-VERSION
make iasl
make acpixtract
make acpiexec
make acpihelp
make acpisrc
make acpibin
make acpidump
make acpiexamples
```

To install the generated tools in /usr/bin:

```
cd acpica-unix-VERSION
make install
```

## Linux Binary Tools
Prebuilt x86-64 Linux binaries of the ACPICA utilities are attached to the
[latest GitHub release](https://github.com/open-acpica/acpica/releases/latest):

Major tools and utilities:
- [iasl](https://github.com/open-acpica/acpica/releases/download/20260930/iasl) -
  ACPI Source Language Compiler, ACPI Table Compiler, and AML Disassembler
- [acpiexec](https://github.com/open-acpica/acpica/releases/download/20260930/acpiexec) -
  Load ACPI tables and run control methods from the user space
- [acpidump](https://github.com/open-acpica/acpica/releases/download/20260930/acpidump) -
  Obtain system ACPI tables and save them in an ASCII hex format
- [acpixtract](https://github.com/open-acpica/acpica/releases/download/20260930/acpixtract) -
  Extract binary ACPI tables from an ASCII acpidump
- [acpihelp](https://github.com/open-acpica/acpica/releases/download/20260930/acpihelp) -
  Help utility for ASL operators, AML opcodes, and ACPI Predefined Names

Miscellaneous utilities:
- [acpisrc](https://github.com/open-acpica/acpica/releases/download/20260930/acpisrc) -
  Convert ACPICA code to Linux format
- [acpibin](https://github.com/open-acpica/acpica/releases/download/20260930/acpibin) -
  Miscellaneous manipulation of binary ACPI tables
- [acpiexamples](https://github.com/open-acpica/acpica/releases/download/20260930/acpiexamples) -
  Example ACPICA initialization and usage code

The release log for the latest version is available as
[changelogs.md](https://github.com/open-acpica/acpica/releases/download/20260930/changelogs.md).

## Linux Support
Starting with the Linux kernel version 2.4, ACPICA is embedded within
the Linux kernel. There is no specific Linux source code package for
ACPICA. Instead, new ACPICA code is released to Linux by the ACPICA team
through the following procedure:

1. The Linux version of each ACPICA commit is generated from the Git
   tree - the code is converted to Linux format through an ACPICA
   utility (AcpiSrc) and lindent (see the generate/linux scripts).
2. Individual patches are created, merged with the current Linux source
   tree, and released to Linux.

The Linux versions of the user-space ACPICA utilities (iASL, AcpiExec,
AcpiXtract, and so forth) can be built from the UNIX ACPICA source code
package.

## Windows Support
Windows source code packages, Microsoft Visual C++ project files, and
Windows binary tools are no longer provided, starting with version
20260930. Older Windows packages remain available from the
[previous releases](#download-previous-versions).

## UEFI Support
Acpidump.efi binaries are not part of the release. They can be built
from the Git tree using the EDK2 build environment in
[generate/efi](https://github.com/open-acpica/acpica/tree/master/generate/efi)
(IA32, X64 and RISCV64 are supported).

## Download Previous Versions
**2026**
- [20260408](https://github.com/open-acpica/acpica/releases/tag/20260408)

**2025**
- [20251212](https://github.com/open-acpica/acpica/releases/tag/20251212)
- [20250807](https://github.com/open-acpica/acpica/releases/tag/20250807)
- [20250404](https://github.com/open-acpica/acpica/releases/tag/R2025_04_04)

**2024**
- [20241212](https://github.com/open-acpica/acpica/releases/tag/R2024_12_12)
- [20240927](https://github.com/open-acpica/acpica/releases/tag/R09_27_24)
- [20240827](https://github.com/open-acpica/acpica/releases/tag/version-20240827)
- [20240321](https://github.com/open-acpica/acpica/releases/tag/G20240322)

[All releases on GitHub](https://github.com/open-acpica/acpica/releases)
