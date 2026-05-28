@echo off

cd "%~dp0"
chcp 65001

if "%1"=="" (
	for %%f in (assets\highlighting-tests\*) do (
		cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
		pause
	)
	exit /b
)

goto %1

:awk
for /r ..\protobuf\java %%f in (*.awk) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:unity
for /r ..\arfoundation-samples\Assets %%f in (*.unity *.prefab *.asset) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:proto
for /r ..\protobuf %%f in (*.proto) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:css
for /r ..\basic-computer-games %%f in (*.css) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:shader
for /r ..\arfoundation-samples\Assets %%f in (*.shader) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:hlsl
for /r ..\arfoundation-samples\Assets %%f in (*.shader *.cginc) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:sql
for /r ..\forstie %%f in (*.sql) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
for /r ..\sql-server-samples\samples %%f in (*.sql) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:el
set emacs_dir=C:\cygwin64\usr\share\emacs
set emacs_dir=C:\msys64\usr\share\emacs
for /r %emacs_dir% %%f in (*.el) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:bas
for /r ..\basic-computer-games\00_Alternate_Languages %%f in (*.bas) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:sln
for /r .. %%f in (*.sln) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:bat
for /r .. %%f in (*.bat) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:cs
for /r .. %%f in (*.cs) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:cpp
for /r .. %%f in (*.cpp *.hpp) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:c
for /r .. %%f in (*.c *.h) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:rs
for /r .. %%f in (*.rs) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:makefile
for /r .. %%f in (Makefile*) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:dockerfile
for /r ..\dockerfile-examples %%f in (Dockerfile*) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:properties
for /r .. %%f in (*.properties) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:po
for /r .. %%f in (*.po) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:config
for /r .. %%f in (*config *.ini) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:toml
for /r %%f in (*.toml) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:xml
for /r .. %%f in (*.jmx *.xml) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:html
for /r .. %%f in (*.html *.htm) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:csproj
:vbproj
for /r .. %%f in (*.vbproj *.csproj) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:rb
for /r .. %%f in (*.rb) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:sh
for /r .. %%f in (*.sh) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:md
for /r .. %%f in (*.md) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:yml
:yaml
for /r .. %%f in (*.yml *.yaml) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:json
for /r .. %%f in (*.json) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:py
:python
for /r .. %%f in (*.py) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:js
:javascript
for /r .. %%f in (*.js) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:java
for /r .. %%f in (*.java) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:ignore
:gitignore
for /r .. %%f in (.gitignore*) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b

:lsh
for %%f in (crates\lsh\definitions\*.lsh) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
	pause
)
exit /b
