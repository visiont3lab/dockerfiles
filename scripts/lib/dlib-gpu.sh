#!/usr/bin/env bash

# Dlib installation CUDA Support
apt-get update && \
    apt-get install -y git libopenblas-dev liblapack-dev \
    && rm -rf /var/lib/apt/lists/*

mkdir -p $HOME/lib && cd $HOME/lib && \
git clone https://github.com/davisking/dlib.git && \
cd $HOME/lib/dlib &&  python3 setup.py install  --set CUDA_HOST_COMPILER=/usr/bin/gcc-7 --clean
