#!/usr/bin/env bash
set -e

echo "Install Python3 tools and libraries"
apt-get update 
apt-get install -y python3-pip python3-dev build-essential \
    libssl-dev libffi-dev 
apt-get clean -y

pip3 install numpy \
            scipy  \
            imutils \
            pandas \
            matplotlib \
            scikit-learn \
            Pillow \
            cython  \
            scikit-image \
            lmdb \
            natsort \
            opencv-python \
            opencv-contrib-python \
            tensorflow==1.14 \
            torch==1.3.1+cpu torchvision==0.4.2+cpu -f https://download.pytorch.org/whl/torch_stable.html
            