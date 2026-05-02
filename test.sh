#! /bin/bash
# shellcheck shell=bash

set -eu
set -o pipefail

here=$(dirname "$0")
cd "$here" || exit 1

case $1 in
Dockerfile)
# Dockerfiles
find ../dockerfile-examples -name Dockerfile | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

properties)
# .properties
find ../JMeter-unofficial-ja -name '*.properties' | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

po)
# .po
find ../MonoDevelop-unofficial-ja -name '*.po' | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

config)
# *config
find .. -name highlighting-tests -prune -o -name '*config' -print -o -name '*.ini' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

xml)
# .xml/.html
find .. -name highlighting-tests -prune -o -name '*.xml' -print -o -name '*.html' -print -o -name '*.htm' -print -o -name '*.csproj' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

rb)
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

yaml)
# .yaml/.yml
find .. -name highlighting-tests -prune -o -name '*.yaml' -print -o -name '*.yml' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

json)
# .json
find .. -name highlighting-tests -prune -o -name '*.json' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

py)
# .py
find .. -name highlighting-tests -prune -o -name '*.py' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

js)
# .js/.jsx
find .. -name highlighting-tests -prune -o -name '*.js' -print -o -name '*.jsx' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

ignore)
# .gitignore
find .. -name highlighting-tests -prune -o -name '.gitignore' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

# .lsh
lsh)
for f in crates/lsh/definitions/*.lsh; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

# bundled examples
*)
for f in assets/highlighting-tests/*; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;
esac
