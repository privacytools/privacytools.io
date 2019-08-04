#!/bin/bash

# Runs html-beautify's format check and errors with 0/1 if it needs to be changed.
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