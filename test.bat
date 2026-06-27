@echo off

cd "%~dp0"
chcp 65001

set lsh_cmd=cargo run -p lsh-bin --
rem set lsh_cmd=target\debug\lsh-bin.exe

if "%1"=="" (
	for %%f in (assets\highlighting-tests\*) do (
		%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
		pause
	)
	exit /b
)

if exist "%1" (
	%lsh_cmd% render --input "%1" crates\lsh\definitions
	exit /b
)

goto %1

:hs
for /r ..\Functional-Programming %%f in (*.hs) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:scm
for /r ..\Gauche-gl-examples %%f in (*.scm) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:gradle
for /r ..\heroku-buildpack-gradle %%f in (build.gradle*) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:awk
for /r ..\awklibs %%f in (*.awk) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:unity
for /r ..\arfoundation-samples\Assets %%f in (*.unity *.prefab *.asset) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:proto
for /r ..\protobuf %%f in (*.proto) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:css
for /r ..\basic-computer-games %%f in (*.css) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:shader
for /r ..\arfoundation-samples\Assets %%f in (*.shader) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:hlsl
for /r ..\arfoundation-samples\Assets %%f in (*.shader *.cginc) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:sql
for /r ..\forstie %%f in (*.sql) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
for /r ..\sql-server-samples\samples %%f in (*.sql) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:el
set emacs_dir=C:\cygwin64\usr\share\emacs
set emacs_dir=C:\msys64\usr\share\emacs
for /r %emacs_dir% %%f in (*.el) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:bas
for /r ..\basic-computer-games\00_Alternate_Languages %%f in (*.bas) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:sln
for /r .. %%f in (*.sln) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:bat
for /r ..\protobuf %%f in (*.bat) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:cs
for /r .. %%f in (*.cs) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:cpp
for /r .. %%f in (*.cpp *.hpp) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:c
for /r .. %%f in (*.c *.h) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:rs
for /r .. %%f in (*.rs) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:makefile
for /r .. %%f in (Makefile*) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:dockerfile
for /r ..\dockerfile-examples %%f in (Dockerfile*) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:properties
for /r .. %%f in (*.properties) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:po
for /r .. %%f in (*.po) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:config
for /r .. %%f in (*config *.ini) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:toml
for /r %%f in (*.toml) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:xml
for /r .. %%f in (*.jmx *.xml) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:html
for /r .. %%f in (*.html *.htm) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:csproj
:vbproj
for /r .. %%f in (*.vbproj *.csproj) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:rb
for /r .. %%f in (*.rb) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:sh
for /r .. %%f in (*.sh) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:md
for /r .. %%f in (*.md) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:yml
:yaml
for /r .. %%f in (*.yml *.yaml) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:json
for /r .. %%f in (*.json) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:py
:python
for /r .. %%f in (*.py) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:js
:javascript
for /r .. %%f in (*.js) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:java
for /r .. %%f in (*.java) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:ignore
:gitignore
for /r .. %%f in (.gitignore*) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:lsh
for %%f in (crates\lsh\definitions\*.lsh) do (
	%lsh_cmd% render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b
