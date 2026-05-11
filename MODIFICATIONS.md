
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

There's a bug in LSH runtime that cannot handle some SQL string literals well.


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

1. Run `./test.sh` (or .ps1, .bat) without any parameters to test sample scripts in `assets/highlighting-tests/`
2. Run `./test.sh setup` first to obtain sample scripts in sibling directories.
3. Run `./test.sh target` (where target is sql, el, bas etc.) to test sample scripts (in the obtained directories, in this repo itself or in fixed system directories).

- bash (for WSL/MSYS2/macOS/Linux)
  - `./test.sh setup` clones following repositories:
    - https://github.com/coding-horror/basic-computer-games.git (for .bas)
    - https://github.com/komljen/dockerfile-examples.git
    - https://github.com/microsoft/sql-server-samples.git (for MS SQL Server .sql)
    - https://gist.github.com/forstie (for IBM DB2 .sql)
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

## References

- [Highlighting Rules in GitHub](https://github.com/github-linguist/linguist/tree/main/vendor)
  - [Basic](https://github.com/telnet23/language-basic/blob/master/grammars/basic.cson)
  - [Batch File](https://github.com/mmims/language-batchfile/blob/master/grammars/batchfile.cson)
  - [Dockerfile](https://github.com/asbjornenge/Docker.tmbundle/tree/master/Syntaxes)
  - [Emacs Lisp](https://github.com/Alhadis/language-emacs-lisp/blob/master/grammars/emacs-lisp.cson)
  - [GNU gettext](https://github.com/textmate/gettext.tmbundle/blob/master/Syntaxes/Gettext.tmLanguage)
  - [Makefile](https://github.com/textmate/make.tmbundle/blob/master/Syntaxes/Makefile.plist)
  - [SQL](https://github.com/textmate/sql.tmbundle/blob/master/Syntaxes/SQL.plist)
  - [VisualStudio Solution](https://github.com/Nixinova/NovaGrammars/blob/main/grammars/solution.yaml-tmLanguage)
