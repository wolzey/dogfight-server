#!/bin/bash
rm -rf dist
rm -rf dist.zip
mkdir dist
TARGETDIR='dist';for file in *;do test "$file" != "$TARGETDIR" && cp -r "$file" "$TARGETDIR/";done
zip -rq dist.zip dist/
rm -rf dist/node_modules