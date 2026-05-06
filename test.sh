#! /bin/bash
# shellcheck shell=bash

set -u
set -o pipefail

here=$(dirname "$0")
cd "$here" || exit 1

if [ $# -eq 0 ]
then
	# bundled examples
	for f in assets/highlighting-tests/*; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	exit
fi

case $1 in
setup)
	cd ..
	git clone https://github.com/coding-horror/basic-computer-games.git
	git clone https://github.com/Alhadis/language-emacs-lisp.git
	git clone git@github.com:komljen/dockerfile-examples.git
	git clone https://github.com/yuki-gh/MySQL-unofficial-ja.git
	git clone git@github.com:yuki-gh/JMeter-unofficial-ja.git
	git clone git@github.com:yuki-gh/MonoDevelop-unofficial-ja.git
	git clone git@github.com:yuki-gh/UnityEditor-unofficial-ja.git
	git clone git@github.com:yuki-gh/arm64.git
	git clone git@github.com:yuki-gh/riscv.git
	git clone git@github.com:yuki-gh/retropc-tools.git
	git clone https://github.com/microsoft/sql-server-samples.git
	mkdir forstie
	cd forstie
	curl https://api.github.com/users/forstie/gists | jq -r '.[].files[].raw_url' | wget -i -
	;;

sql)
	# .sql
	find ../sql-server-samples/samples ../forstie  -name '*.sql' | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

el)
	# .el
	find /usr/share/emacs -name '*.el' | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

bas)
	# .bas
	find ../basic-computer-games -name '*.bas' | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

sln)
	# .sln
	find .. -name '*.sln' | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

bat)
	# .bat
	find .. -name highlighting-tests -prune -o -name '*.bat' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

cs)
	# .cs
	find .. -name highlighting-tests -prune -o -name '*.cs' -print | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

cpp)
	# .cpp
	find .. -name highlighting-tests -prune -o -name '*.cpp' -print -o -name '*.hpp' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

c)
	# .c
	find .. -name highlighting-tests -prune -o -name '*.c' -print -o -name '*.h' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

rs)
	# .rs
	find . -name highlighting-tests -prune -o -name '*.rs' -print | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

Makefile|makefile)
	# Makefiles
	find .. -name Makefile | sort | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

Dockerfile|dockerfile)
	# Dockerfiles
	find ../dockerfile-examples -name Dockerfile | sort | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

properties)
	# .properties
	find ../JMeter-unofficial-ja -name '*.properties' | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

po)
	# .po
	find .. -name '*.po' | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

config|conf)
	# *config
	find .. -name highlighting-tests -prune -o -name '*config' -print -o -name '*.ini' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

toml)
	# *config
	find . -name '*.toml' | sort | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

xml)
	# .xml
	find .. -name highlighting-tests -prune -o -name '*.jmx' -print -o -name '*.xml' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

html)
	# .html
	find .. -name highlighting-tests -prune -o -name '*.html' -print -o -name '*.htm' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

csproj|vbproj)
	# .csproj/.vbproj
	find .. -name highlighting-tests -prune -o -name '*.csproj' -print -o -name '*.vbproj' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

rb|ruby)
	# .rb
	find .. -name '*.rb' | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

sh)
	# .sh
	find .. -name highlighting-tests -prune -o -name '*.sh' -print | sort | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

md)
	# .md
	find .. -name highlighting-tests -prune -o -name '*.md' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

yaml|yml)
	# .yaml/.yml
	find .. -name highlighting-tests -prune -o -name '*.yaml' -print -o -name '*.yml' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

json)
	# .json
	find .. -name highlighting-tests -prune -o -name '*.json' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

py|python)
	# .py
	find .. -name highlighting-tests -prune -o -name '*.py' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

js|javascript)
	# .js/.jsx
	find .. -name highlighting-tests -prune -o -name '*.js' -print -o -name '*.jsx' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

java)
	# .java
	find .. -name '*.java'  | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

ignore|gitignore)
	# .gitignore
	find .. -name highlighting-tests -prune -o -name '.gitignore' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

lsh)
	# .lsh
	for f in crates/lsh/definitions/*.lsh; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;
esac
