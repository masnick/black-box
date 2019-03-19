#! /usr/bin/env bash

cd /Users/max/git/me-backup/

rm -rf www.maxmasnick.com
wget --recursive --html-extension --page-requisites --convert-links https://www.maxmasnick.com

rm -rf micro.maxmasnick.com
wget --recursive --html-extension --page-requisites --convert-links https://masnick.blog

rm -rf protips.maxmasnick.com
wget --recursive --html-extension --page-requisites --convert-links http://protips.maxmasnick.com

git add -A
git commit --amend -m "Updated $(date +%Y-%m-%d)"
git push -f
