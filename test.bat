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

:bas
for /r ..\basic-computer-games\00_Alternate_Languages %%f in (*.bas) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:sln
for /r .. %%f in (*.sln) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:bat
for /r .. %%f in (*.bat) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:cs
for /r .. %%f in (*.cs) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:cpp
for /r .. %%f in (*.cpp *.hpp) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:c
for /r .. %%f in (*.c *.h) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:rs
for /r .. %%f in (*.rs) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:dockerfile
for /r ..\dockerfile-examples %%f in (Dockerfile*) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:properties
for /r .. %%f in (*.properties) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:po
for /r .. %%f in (*.po) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:config
for /r .. %%f in (*config *.ini) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:toml
for /r %%f in (*.toml) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:xml
:html
for /r .. %%f in (*.xml *.html *.htm *.csproj) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:rb
for /r .. %%f in (*.rb) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:sh
for /r .. %%f in (*.sh) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:md
for /r .. %%f in (*.md) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:yml
:yaml
for /r .. %%f in (*.yml *.yaml) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:json
for /r .. %%f in (*.json) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:py
:python
for /r .. %%f in (*.py) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:js
:javascript
for /r .. %%f in (*.js) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:ignore
:gitignore
for /r .. %%f in (.gitignore*) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b

:lsh
for %%f in (crates\lsh\definitions\*.lsh) do (
	cargo run -p lsh-bin -- render --input "%%f" crates\lsh\definitions 2>nul | more
)
exit /b
