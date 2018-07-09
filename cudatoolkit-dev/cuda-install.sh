#!/bin/bash 
usage="$(basename "$0") [-h] -- program to install cudatoolkit
where:
    -h  show this help text"


wget -c --quiet https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_396.26_linux

#cuda_filepath="/home/abanihirwe/work/quansight/cudatoolkit/cuda_9.2.88_396.26_linux"
cuda_filepath="cuda_9.2.88_396.26_linux"
chmod ugo+x $cuda_filepath

install_dir=$CONDA_PREFIX/pkgs/$PKG_NAME-$PKG_VERSION

mkdir -p install_dir

bash ./$cuda_filepath --silent --toolkit --toolkitpath=$install_dir --override 

cuda_activate=${CONDA_PREFIX}/etc/conda/activate.d/cuda_activate.sh
cuda_deactivate=${CONDA_PREFIX}/etc/conda/deactivate.d/cuda_deactivate.sh 

mkdir -p ${CONDA_PREFIX}/etc/conda/{activate.d,deactivate.d}


cat>$cuda_activate<<'EOF'
#!/bin/bash
export CUDA_HOME="$install_dir"
EOF

cat>$cuda_deactivate<<'EOF'
#!/bin/bash
unset CUDA_HOME
EOF 
