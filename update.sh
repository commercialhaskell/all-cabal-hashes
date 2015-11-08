#!/usr/bin/env bash

set -xue

wget https://s3.amazonaws.com/stackage-travis/all-cabal-hashes-tool/all-cabal-hashes-tool.bz2
bunzip2 all-cabal-hashes-tool.bz2
chmod +x all-cabal-hashes-tool
mv all-cabal-hashes-tool /tmp
/tmp/all-cabal-hashes-tool

if [ -n "$(git status --porcelain)" ]
then
    git add -A
    git commit -m "Update from Hackage at $(date --utc --iso=sec)" --gpg-sign=D6CF60FD
    git pull --rebase
    git push git@github.com:commercialhaskell/all-cabal-hashes.git HEAD:hackage

    git tag current-hackage -u D6CF60FD -m "Update from Hackage at $(date --utc --iso=sec)" -f
    git push git@github.com:commercialhaskell/all-cabal-hashes.git --tags --force
else
    echo No changes present
fi
