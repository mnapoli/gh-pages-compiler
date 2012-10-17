#!/bin/sh
#
# Usage:
# gh-pages-compiler.sh <git-repository>

set -e
set -u

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <git-repository>" >&2
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

# Checkout the source branch
git clone --quiet $1 tmp

# Checkout the target branch
git clone --quiet -b gh-pages $1 output

# Check if there is a template in the source branch
if [ -d tmp/gh-pages-template ]; then
	TEMPLATE_DIR=tmp/gh-pages-template
fi

# Find all markdown files
cd tmp
find . -name '*.md' | rev | cut -f 2- -d '.' | rev > $BASE_DIR/files.tmp

cd $BASE_DIR

# Copy resources files of the template
cp -r $TEMPLATE_DIR/public/* output/

# Compile each file
while read line
do
	SOURCE_FILE=tmp/$line.md
	OUTPUT_FILE=output/$line.html
	# Rename README to index
	OUTPUT_FILE=$(echo $OUTPUT_FILE | sed -e 's/README/index/g')
    echo $line
    mkdir -p $(dirname output/$line)
	cat $TEMPLATE_DIR/template-header.html > $OUTPUT_FILE
	bin/github-flavored-markdown.rb $SOURCE_FILE >> $OUTPUT_FILE
	cat $TEMPLATE_DIR/template-footer.html >> $OUTPUT_FILE
done < files.tmp

rm files.tmp
rm -rf tmp

# Commit and publish changes
cd output
git add -A
git commit --quiet -am  "Pages generation"
git push --quiet

rm -rf output
