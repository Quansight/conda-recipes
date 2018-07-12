#!/bin/bash 


TEMPDIR=$CONDA_PREFIX/tmp/cudatoolkit-dev 
mkdir -p $TEMPDIR

url="https://developer.nvidia.com/compute/cuda/${PKG_VERSION:0:3}/Prod2/local_installers/cuda_${PKG_VERSION}_linux"
wget -c --directory-prefix=$TEMPDIR --quiet $url
cuda_filepath=$TEMPDIR/cuda_${PKG_VERSION}_linux
chmod ugo+x $cuda_filepath

install_dir=$CONDA_PREFIX/pkgs/cudatoolkit-dev
mkdir -p install_dir

bash $cuda_filepath --silent --toolkit --toolkitpath=$install_dir --override 


