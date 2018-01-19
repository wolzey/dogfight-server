#!/bin/bash
rm -rf dist
mkdir dist
TARGETDIR='dist';for file in *;do test "$file" != "$TARGETDIR" && cp -r "$file" "$TARGETDIR/";done
