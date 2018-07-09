#!/bin/bash
set -x -e

CUDADEV=$PREFIX/bin

mkdir -p $CUDADEV
cp $RECIPE_DIR/cuda-install.sh $CUDADEV/cuda-install.sh


chmod +x $CUDADEV/*.sh
ln -s $CUDADEV/cuda-install.sh $PREFIX/bin/cuda-install





