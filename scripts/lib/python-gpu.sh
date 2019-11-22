#!/usr/bin/env bash
set -e

echo "Install Python3 tools and libraries"
apt-get update 
apt-get install -y python3-pip python3-dev build-essential \
    libssl-dev libffi-dev 
apt-get clean -y

# Dlib and opencv gpu are installed and link separately (check opencv-gpu and dlib-gpu)
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
            tensorflow-gpu==1.14 \
            face_recognition \
            torchvision torch