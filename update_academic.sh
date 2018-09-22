#!/usr/bin/env bash

# Display available updates to Academic.
git fetch
git log --pretty=oneline --abbrev-commit --decorate HEAD..origin/master
cd ../../

git add *
git commit -m "upload"
git push origin master

# Update Academic.
git submodule update --remote --merge
