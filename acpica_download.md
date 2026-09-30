# Download for ACPI Component Architecture (ACPICA)
## Navigation

- [Back to main page](index.md)

- Other articles in this section
    - [Project overview](acpica_overview.md)
    - [External documentation](acpica_documentation.md)

## Source Code Tree

[Release Notes (April 2026)](https://cdrdv2.intel.com/v1/dl/getContent/917301?explicitVersion=true)

The entire source code for the ACPICA project is maintained under the
Git version control system in a single repository.

**NOTE**\
Depending on your needs, the head of the Git tree may or may
not be appropriate. The Git tree is a working tree that grows as the
next full release of ACPICA is constructed. Commits to the tree are made
as individual bug fixes and features are completed.

The current head of the Git tree is not fully evaluated and may or may
not work. Please use the latest release instead.

[View the ACPICA Source Code on GitHub](https://github.com/acpica/acpica/)

### Direct Access to the Public ACPICA Git Repository
The Git repository can be directly accessed through
git://github.com/acpica/acpica.git

For example:
```
git clone git://github.com/acpica/acpica.git
```

## UNIX Source Code Packages
[UNIX Format Source Code and Build Environment with an Intel License (.tar.gz, 1.94 MB)](/content/www/us/en/download/776303/acpi-component-architecture-downloads-unix-format-source-code-and-build-environment-with-an-intel-license.html)

Includes the entire ACPICA source, makefiles, and ACPI utilities.

[UNIX Format Source Code and Build Environment with a Dual License (.tar.gz, 1.66 MB)](/content/www/us/en/download/776307/acpi-component-architecture-downloads-unix-format-source-code-and-build-environment-with-a-dual-license.html)

Includes the entire ACPICA source, makefiles, and ACPI utilities, with
the dual license included in the module headers.

**NOTE**\
The unix2 source package is deprecated since the dual license,
along with the Intel license, is now included in all source modules.
This package will be removed from future ACPICA releases.


[UNIX Format ASL Test Suite (.tar.gz, 1.91 MB)](/content/www/us/en/download/776310/acpi-component-architecture-downloads-unix-format-asl-test-suite.html)

Test suite used to validate ACPICA. This includes ASL files and project
makefiles.

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
    -   Flex: version 2.5.39
    -   Bison: version 3.0.4

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
```

To install the generated tools in /usr/bin:

```
cd acpica-unix-VERSION
make install
```

## Linux Support {#linux-support .margin-btm-1x}
Starting with the Linux kernel version 2.4, ACPICA is embedded within
the Linux kernel. There is no specific Linux source code package for
ACPICA. Instead, new ACPICA code is released to Linux by the ACPICA team
through the following procedure:

1.The Linux version of ACPICA is created from the UNIX release
  package---the code is converted to Linux format through an ACPICA
  utility (AcpiSrc) and lindent.
2.Individual patches are created, merged with the current Linux source
  tree, and released to Linux.

The Linux versions of the user-space ACPICA utilities (iASL, AcpiExec,
AcpiXtract, and so forth) can be built from the UNIX ACPICA source code
package.

## Windows Source Code Packages
[Windows Format Source Code and Build Environment (.zip, 3.09 MB)](/content/www/us/en/download/776313/acpi-component-architecture-downloads-windows-format-source-code-and-build-environment.html)

Includes the entire ACPICA source, Microsoft Visual C++\* project files,
and ACPICA utilities.

[Windows Format Test Suite (.zip, 3.29 MB)](/content/www/us/en/download/776318/acpi-component-architecture-downloads-windows-format-test-suite.html)

Test suite used to validate ACPICA. This includes ASL files and project
makefiles.

The Windows versions of the user-space ACPICA utilities can be built
from the Windows ACPICA source code package via the following
instructions.

The Microsoft Visual Studio 2017 project file is located here:
```
generate/msvc2017/AcpiComponents.sln
```

The Windows versions of GNU Flex/Bison must be installed, and they must
be installed in a directory that contains no embedded spaces in the
pathname. They cannot be installed in the default c:\\Program Files
directory. This is a bug in Bison. The default Windows project file for
iASL assumes that these tools are installed at this location:

```
c:\GnuWin32
```

Once the tools are installed, ensure that this path is added to the
default system **$PATH** environment variable:

```
c:\GnuWin32\bin
```

At this point, you will need to reboot Windows to make the system aware of the
updated **$PATH**.

iASL has been generated with these versions of Flex or Bison for Windows:

- [Flex for Windows: v2.5.4a](https://gnuwin32.sourceforge.net/packages/flex.htm)
- [Bison for Windows: v2.4.1](https://gnuwin32.sourceforge.net/packages/bison.htm)

## Windows Binary Tools {#windows-binary-tools .margin-btm-1x}
The Windows versions of the various tools are zipped in a single file
that is available here:

[iASL Compiler and Windows ACPI Tools (.zip, 1.31 MB)](/content/www/us/en/download/774881/acpi-component-architecture-downloads-windows-binary-tools.html)

Major tools and utilities:
- iASL - ACPI Source Language Compiler, ACPI Table Compiler, and AML
  Disassembler
- AcpiExec - Load ACPI tables and run control methods from the user
  space
- AcpiDump - Obtain system ACPI tables and save them in an ASCII hex
  format
- AcpiXtract - Extract binary ACPI tables from an ASCII acpidump
- AcpiHelp - Help utility for ASL operators, AML opcodes, and ACPI
  Predefined Names

Miscellaneous utilities:
- AcpiSrc - Convert ACPICA code to Linux format
- AcpiBin - Miscellaneous manipulation of binary ACPI tables

Documentation and demo code:
- changes.txt - ACPICA release log file
- badcode.asl - Demo ASL file containing iASL error detection
  examples

## UEFI Support {#uefi-support .clear-font}

[Binary Acpidump.efi Files for IA-32 and X64 (tar.gz, 27 KB)](/content/www/us/en/download/775118/acpi-component-architecture-downloads-uefi-support.html)

## Download Previous Versions {#download-previous-versions .margin-btm-1x}
**2025**
- [20251212](/content/www/us/en/download/775127/acpi-component-architecture-downloads-previous-releases.html)
- [20250807](/content/www/us/en/download/775127/872287/acpi-component-architecture-downloads-previous-releases.html)
- [20250404](/content/www/us/en/download/775127/852053/acpi-component-architecture-downloads-previous-releases.html)

**2024**
- [20241212](/content/www/us/en/download/775127/843403/acpi-component-architecture-downloads-previous-releases.html)
- [20240927](/content/www/us/en/download/775127/835687/acpi-component-architecture-downloads-previous-releases.html)
- [20240827](/content/www/us/en/download/775127/831973/acpi-component-architecture-downloads-previous-releases.html)
