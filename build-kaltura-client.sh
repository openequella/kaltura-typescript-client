#!/bin/bash

## Change these as required
GITHUB_VER=17.18.0
CLIENT_VER=7.0.2

## Below will hopefully rarely need changing
PROJECT_DIR=$(pwd)
CLIENT_BUILD_DIR=kaltura-typescript-client
DIST_FILE_PREFIX=kaltura-typescript-client-$CLIENT_VER

# Make sure we start clean
rm -rf $CLIENT_BUILD_DIR

# Download, build and NPM install
wget -O - https://github.com/kaltura/KalturaGeneratedAPIClientsTypescript/archive/v${GITHUB_VER}.tar.gz | \
  tar --transform="s/KalturaGeneratedAPIClientsTypescript-${GITHUB_VER}/${CLIENT_BUILD_DIR}/" -zxv && \
  cd $CLIENT_BUILD_DIR && \
  npm install && \
  npm run deploy && \
  mv dist/$DIST_FILE_PREFIX*.tgz "$PROJECT_DIR" && \
  cd "$PROJECT_DIR" || \
  (echo "Failed to build Kaltura Typescript Client, aborting..."; exit 1;)
