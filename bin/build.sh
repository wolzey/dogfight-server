#!/bin/bash
rm -rf dist
mkdir dist
TARGETDIR='dist';for file in *;do test "$file" != "$TARGETDIR" && "$file" && cp -r "$file" "$TARGETDIR/";done
cd dist
rm -rf node_modules
cd ~/dogfighter