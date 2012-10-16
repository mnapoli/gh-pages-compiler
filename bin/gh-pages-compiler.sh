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

TEMPLATE_DIR=$BASE_DIR/resources/templates/default

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

# Copy resources files of the template
cp -r $TEMPLATE_DIR/public/* output/

# Compile each file
while read line
do
    echo $line
    mkdir -p $(dirname output/$line)
	cat $TEMPLATE_DIR/template-header.html > output/$line
	bin/github-flavored-markdown.rb tmp/$line >> output/$line
	cat $TEMPLATE_DIR/template-footer.html >> output/$line
done < files.tmp

# Rename all files to .html
find output -name "*.md" -exec rename '.md' '.html' {} \;

# Rename 'README.html' to 'index.html'
find output -name "README.html" -exec rename README.html index.html {} \;

rm files.tmp
rm -rf tmp
