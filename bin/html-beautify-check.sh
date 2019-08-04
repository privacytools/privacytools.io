#!/bin/bash

# A custom script, that formats the file(s) with html-beautify,
# but instead of changing it, it only errors with 0/1 if it needs to be changed
# Ref: https://web.archive.org/web/20190522172323/https://medium.com/@jtomaszewski/keep-your-code-clean-forever-65c71f7f2df
APPDIR=$(readlink -f $(dirname $(dirname $0)))
TMPDIR=$(mktemp -d)
cd $APPDIR

for line in $*; do
  filepath=$(readlink -f $line)
  file=${filepath/$APPDIR\//}
  mkdir -p $TMPDIR/$(dirname $file)
  cp $APPDIR/$file $TMPDIR/$file
done

message=$(find $TMPDIR -type f | xargs node_modules/.bin/html-beautify -r | grep -v unchanged || true)
if [[ $message ]]; then
  echo "$message" | sed "s#$TMPDIR##g" | sed "s#\.\.\/##g"
  rm -rf $TMPDIR
  exit 1
fi

rm -rf $TMPDIR