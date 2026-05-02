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
bas)
	# .bas
	find ../basic-computer-games -name '*.bas' | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

sln)
	# .sln
	find .. -name '*.sln' | while read -r f; do
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
	find .. -name highlighting-tests -prune -o -name '*.cs' -print | head | while read -r f; do
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
	find . -name highlighting-tests -prune -o -name '*.rs' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

Dockerfile|dockerfile)
	# Dockerfiles
	find ../dockerfile-examples -name Dockerfile | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

properties)
	# .properties
	find ../JMeter-unofficial-ja -name '*.properties' | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

po)
	# .po
	find ../MonoDevelop-unofficial-ja -name '*.po' | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

config|conf)
	# *config
	find .. -name highlighting-tests -prune -o -name '*config' -print -o -name '*.ini' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

xml|html)
	# .xml/.html
	find .. -name highlighting-tests -prune -o -name '*.xml' -print -o -name '*.html' -print -o -name '*.htm' -print -o -name '*.csproj' -print | head | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

rb|ruby)
	# .rb
	find .. -name '*.rb' | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

sh)
	# .sh
	find .. -name highlighting-tests -prune -o -name '*.sh' -print | while read -r f; do
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
	find .. -name highlighting-tests -prune -o -name '*.py' -print | while read -r f; do
		cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r
	done
	;;

js|javascript)
	# .js/.jsx
	find .. -name highlighting-tests -prune -o -name '*.js' -print -o -name '*.jsx' -print | while read -r f; do
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
