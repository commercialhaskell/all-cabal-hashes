## all-cabal-hashes

[![Build Status](https://travis-ci.org/commercialhaskell/all-cabal-hashes.svg)](https://travis-ci.org/commercialhaskell/all-cabal-hashes)

A repository containing all of the cabal files for all public Haskell packages

The contents are stored on the `hackage` branch. This repository likely isn't
going to be directly useful for you; instead, please check out the
[stackage-update repo](https://github.com/fpco/stackage-update).

Note that this repository is almost identical to
[all-cabal-files](https://github.com/commercialhaskell/all-cabal-hashes).
However, this repository modifies all of the cabal files downloaded from
Hackage to have a number of extra metadata fields useful for verifying
authenticity of packages, namely:

* package-hashes, which contains a number of different hashes (i.e. using different algorithms) applied to the package tarball
* package-locations, providing a set of download URLs
* package-size, giving the byte count of the tarball (to avoid infinite data attacks)

This repository is designed to be compatible with the [Git backed Hackage index
signing and
distribution](https://github.com/commercialhaskell/commercialhaskell/wiki/Git-backed-Hackage-index-signing-and-distribution)
proposal.
