#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/ipbc-dev/bittube"
version="android"

if [ ! -d "bittube" ]; then
  git clone ${url} -b ${version}
  cd bittube
  git submodule update --recursive --init
else
  cd bittube
  git checkout ${version}
  git pull
  git submodule update --recursive --init
fi
