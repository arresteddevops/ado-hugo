#!/bin/bash

if [ $# -ne 1 ]; then
    echo $0: usage: update-theme.sh version
    exit 1
fi

version=$1
branch=release-theme-version-$version
git checkout -b $branch
wget https://github.com/mattstratton/castanet/releases/download/$version/castanet-$version.zip
rm -rf themes/castanet
unzip castanet-$version.zip -d themes/
rm castanet-$version.zip
git add themes/castanet
git commit -m "Releasing theme version $version"
git push origin $branch
hub pull-request -m "Updating theme to $version"