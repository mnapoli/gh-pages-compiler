#!/bin/sh
#
# Usage:
# gh-pages-compiler.sh <source-repo> <target-repo>

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <source-repo> <target-repo>" >&2
  exit 1
fi

if [ -d tmp ]; then
	rm -rf tmp
fi

git clone $1 tmp

if [ ! -d output ]; then
	mkdir output
fi

# find tmp -name *.md

cat ../resources/template-header.htm > output/index.htm
./github-flavored-markdown.rb tmp/README.md >> output/index.htm
cat ../resources/template-footer.htm >> output/index.htm

rm -rf tmp
