#!/bin/bash 

cd $CONDA_PREFIX/bin
find . -type l -exec unlink {} \;
ln -s $CONDA_PREFIX/pkgs/cudatoolkit-dev/bin/* .
