#!/bin/bash 

cd $CONDA_PREFIX/bin
find . -type l -exec unlink {} \;
