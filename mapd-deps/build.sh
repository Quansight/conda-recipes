#!/bin/bash

UNAME=`uname`
PWD=$(pwd)

if [[ $UNAME == "Linux" ]]; then
    cd linux
    source build.sh
    cd $PWD
fi
