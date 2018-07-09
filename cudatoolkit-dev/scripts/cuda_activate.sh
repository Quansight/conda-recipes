#!/bin/bash 

export PATH_BACKUP=$PATH
export CUDA_HOME_BACKUP=$CUDA_HOME
export CUDA_HOME=$CONDA_PREFIX/pkgs/cuda
export PATH=$CUDA_HOME/bin:$PATH