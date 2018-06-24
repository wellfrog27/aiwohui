#!/bin/bash
git checkout gh-pages
git pull origin gh-pages

cd doc/
gitbook init
gitbook build
cd ..
cp -r doc/_book/* ./

git add --all

git commit -m "Update book"
git push origin gh-pages