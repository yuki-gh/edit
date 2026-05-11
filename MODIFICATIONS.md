
# Microsoft Edit (forked)

## SQL (.sql)

- MySQL
- PostgreSQL
  - `B'～'`, `E'～'` and `X'～'`
- MS SQL Server
  - `N'～'`
  - `[typename]`
  - `[identifier name with spaces and symbols!]`
  - `#tempdb_table_name`
  - `@variable_name`
- Oracle
- IBM DB2



## VisualStudio solution (.sln)

## Microsoft BASIC (.bas)

Good old 1980's Microsoft BASIC (and alikes) on 8-bit PCs.

Highlighted keywords are those in GitHub plus dozens of common keywords such as `CONSOLE`, `STEP` and `XOR`.

Line numbers and integer constants are treated differently.

## Dockerfile

Variable references are highlighted.

## Emacs Lisp (.el)

Highlighted keywords are those in GitHub plus dozens of common keywords.

## MS-DOS/Windows Batch File (.bat)

Built-in commands are highlighted.

## Makefile

Variable references and pseudotargets are highlighted.

## GNU gettext (.po)

C/C++/Java style placeholders (`%s` etc) and C#/.NET style ones (`{0}` etc) are highlighted.

## XML

`.htm` `.jmx` and `.vbproj` added.

## properties

`.toml` added 

## Test script

1. Run `./test.sh setup` first to obtain sample scripts in sibling directories.
2. Run `./test.sh` (or .ps1, .bat) without any parameters to test sample scripts in `assets/highlighting-tests/`
3. Run `./test.sh target` (where target is sql, el, bas etc.) to test sample scripts (in the obtained directories, in this repo itself or in fixed system directories).

- bash (for WSL/MSYS2/macOS)
  - `setup` target clones following repositories:
    - https://github.com/coding-horror/basic-computer-games.git
    - https://github.com/Alhadis/language-emacs-lisp.git
    - https://github.com/komljen/dockerfile-examples.git
    - https://github.com/microsoft/sql-server-samples.git
    - https://gist.github.com/forstie
<!--
- https://github.com/yuki-gh/MySQL-unofficial-ja.git
- https://github.com/yuki-gh/JMeter-unofficial-ja.git
- https://github.com/yuki-gh/MonoDevelop-unofficial-ja.git
- https://github.com/yuki-gh/UnityEditor-unofficial-ja.git
-->
- PowerShell
  - no `setup' target
  - look for Cygwin/MSYS2 Emacs Lisp for `el` target
- Windows Batch
  - no `setup` target
  - look for Cygwin/MSYS2 Emacs Lisp for `el` target

## misc.

rust-toolchain.toml: fix rustc/cargo version 1.95.0

