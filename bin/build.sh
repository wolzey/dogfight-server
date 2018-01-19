#!/bin/bash
rm -rf .tmp
mkdir .tmp
rm -rf dist
rsync -av --exclude=".tmp" ./* dist