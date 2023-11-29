#!/bin/bash

# https://stackoverflow.com/a/246128
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd $SCRIPT_DIR

if [ -d bin ]; then
    rm -r bin
    mkdir bin
    echo "# bin" > bin/README.md
fi

if [ -d build ]; then
    rm -r build
fi

GENERATOR_FLAG=""
if command -v cmake &> /dev/null && cmake --help 2>&1 | grep -q "build.ninja"; then
    echo "Ninja found. Setting -GNinja."
    GENERATOR_FLAG="-GNinja"
fi

mkdir build && cd build
cmake $GENERATOR_FLAG ..
cmake --build .
cmake --install .
ctest
cd ..
