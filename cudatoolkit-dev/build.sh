#!/bin/bash
set -x -e

mkdir -p $PREFIX/bin 
cp $RECIPE_DIR/cuda-install.sh $PREFIX/bin/cuda-install.sh 
chmod +x $PREFIX/bin/*.sh 
ln -s $PREFIX/bin/cuda-install.sh $PREFIX/bin/cuda-install 

mkdir -p $CONDA_PREFIX/etc/conda/activate.d 
mkdir -p $CONDA_PREFIX/etc/conda/deactivate.d 
cp $RECIPE_DIR/scripts/cuda_activate.sh $CONDA_PREFIX/etc/conda/activate.d/cuda_activate.sh 
cp $RECIPE_DIR/scripts/cuda_deactivate.sh $CONDA_PREFIX/etc/conda/deactivate.d/cuda_deactivate.sh 


