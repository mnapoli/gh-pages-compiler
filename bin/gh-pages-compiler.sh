#!/bin/sh
#
# Usage:
# gh-pages-compiler.sh <source-repo> <target-repo>

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <source-repo> <target-repo>" >&2
  exit 1
fi

cd $(dirname $0)
cd ..
BASE_DIR=$(pwd)

# Clean and create the directories
if [ -d tmp ]; then
	rm -rf tmp
fi
if [ -d output ]; then
	rm -rf output
fi
mkdir output

# Checkout the repository
git clone --quiet $1 tmp

# Find all markdown files
cd tmp
find . -name '*.md' > $BASE_DIR/files.tmp

cd $BASE_DIR

# Compile each file
while read line
do
    echo $line
    mkdir -p $(dirname output/$line)
	cat resources/template-header.htm > output/$line
	bin/github-flavored-markdown.rb tmp/$line >> output/$line
	cat resources/template-footer.htm >> output/$line
done < files.tmp

# Rename all files to .html
find output -name "*.md" -exec rename '.md' '.html' {} \;

# Rename 'readme.html' to 'index.html'
find output -name "readme.html" -exec rename readme index {} \;

rm files.tmp
rm -rf tmp
