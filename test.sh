#! /bin/bash

here=$(dirname "$0")
cd "$here"

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
find .. -name edit -prune -o -name '*config' -print -o -name '*.ini' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

xml)
# .xml/.html
find .. -name edit -prune -o -name '*.xml' -print -o -name '*.html' -print -o -name '*.htm' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

rb)
# .rb
find .. -name edit -prune -o -name '*.rb' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

sh)
# .sh
find .. -name edit -prune -o -name '*.sh' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

md)
# .md
find .. -name edit -prune -o -name '*.md' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

yaml)
# .yaml/.yml
find .. -name edit -prune -o -name '*.yaml' -print -o -name '*.yml' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

json)
# .json
find .. -name edit -prune -o -name '*.json' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

py)
# .py
find .. -name edit -prune -o -name '*.py' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

js)
# .js/.jsx
find .. -name edit -prune -o -name '*.js' -print -o -name '*.jsx' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

ignore)
# .gitignore
find .. -name edit -prune -o -name '.gitignore' -print | while read -r f; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;

*)
for f in assets/highlighting-tests/*; do
    cargo run -p lsh-bin -- render --input "$f" crates/lsh/definitions 2>/dev/null | less -r 
done
;;
esac
