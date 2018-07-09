#!/bin/bash 

TEMPDIR=/tmp/cuda 
mkdir -p $TEMPDIR

wget -c --directory-prefix=$TEMPDIR --quiet https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_396.26_linux
cuda_filepath=$TEMPDIR/"cuda_9.2.88_396.26_linux"
chmod ugo+x $cuda_filepath

install_dir=$CONDA_PREFIX/pkgs/cuda

mkdir -p install_dir

bash $cuda_filepath --silent --toolkit --toolkitpath=$install_dir --override 


