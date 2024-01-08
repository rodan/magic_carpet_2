#!/bin/bash

#export BUILDTYPE=Release
export BUILDTYPE=Debug

export LDFLAGS=""
export CXXFLAGS=""

make clean
rm -rf CMakeFiles/
rm -rf src
rm -f CMakeCache.txt

#cmake -DCMAKE_BUILD_TYPE=${BUILDTYPE} -DCMAKE_INSTALL_PREFIX=./inst -DCMAKE_CXX_FLAGS="-finstrument-functions" ${HOME}/_work/linux/magic-carpet-2-hd/
cmake -Wno-dev -DCMAKE_BUILD_TYPE=${BUILDTYPE} -DCMAKE_INSTALL_PREFIX=./inst -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON ../

make -j16 DEBUG=1

