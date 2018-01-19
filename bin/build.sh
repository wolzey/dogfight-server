#!/bin/bash
rm -rf dist.zip
mkdir tmp
TARGETDIR='tmp';for file in *;do test "$file" != "$TARGETDIR" && cp -r "$file" "$TARGETDIR/";done
rm -rf tmp/node_modules
zip -r 'dist.zip' tmp/
rm -rf tmp