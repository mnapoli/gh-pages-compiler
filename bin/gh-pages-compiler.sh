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
