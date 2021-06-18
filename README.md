# Kaltura Typescript Client (Build Repo)

This is simply a repo to provide a publicly accessibly version of
https://github.com/kaltura/KalturaGeneratedAPIClientsTypescript. From time to time it will build a
required version of that client, and then 'publish' it as a 'release' on this repo. Not being the
owner of the code, we do not publish it to NPM etc. But at least by using GitHub releases we can
then have a HTTP URL we can use within other `package.json` dependency blocks.

## Rationale

For unknown reasons Kaltura do not publish this to NPM, however that makes it rather difficult for
usage - especially if you want to do it in a module then used for a larger app (such as the Kaltura
Simple Uploader module). So this simplifies these issues.

## Usage

Simply go to the release of interest, and then copy the resultant URL for the `tgz` of the build and
use it in your `package.json`.
