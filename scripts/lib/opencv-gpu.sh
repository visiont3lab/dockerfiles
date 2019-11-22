#!/usr/bin/env bash

set -e
apt-get update && \
    apt-get install -y \
        build-essential cmake git  wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libpq-dev \
        libsm6 \
        libxext6 \
        libxrender-dev \
        libgtk2.0-dev \
        qt5-default \
        libimage-exiftool-perl \
    && rm -rf /var/lib/apt/lists/*

mkdir -p $HOME/lib && cd $HOME/lib 
OPENCV_VERSION="4.1.1"
wget https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip && unzip ${OPENCV_VERSION}.zip && rm ${OPENCV_VERSION}.zip  
wget https://github.com/opencv/opencv_contrib/archive/3.2.0.zip  &&  unzip ${OPENCV_VERSION}.zip  && rm ${OPENCV_VERSION}.zip
mkdir $HOME/lib/opencv-${OPENCV_VERSION}/cmake_binary  && cd $HOME/lib/opencv-${OPENCV_VERSION}/cmake_binary \
&& cmake  -D OPENCV_EXTRA_MODULES_PATH=$HOME/lib/opencv-contrib-${OPENCV_VERSION}/modules  \
    -DBUILD_TIFF=ON \
    -DBUILD_PNG=ON \
    -DBUILD_JPEG=ON \
    -DBUILD_JASPER=OFF \
    -DWITH_FFMPEG=ON \
    -DWITH_GSTREAMER=OFF \
    -DBUILD_ZLIB=OFF \
    -DOPENCV_GENERATE_PKGCONFIG=ON \
    -DBUILD_opencv_java=OFF \
    -DBUILD_opencv_python2=OFF \
    -DBUILD_opencv_python3=ON \
    -DWITH_CUDA=ON \
    -DWITH_OPENGL=ON \
    -DWITH_OPENCL=ON \
    -DWITH_IPP=ON \
    -DWITH_TBB=ON \
    -DWITH_EIGEN=ON \
    -DWITH_V4L=ON \
    -DWITH_GTK=ON  \
    -DWITH_VTK=OFF \
    -DBUILD_TESTS=OFF \
    -DINSTALL_PYTHON_EXAMPLES=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DCMAKE_BUILD_TYPE=RELEASE \
    -DCMAKE_INSTALL_PREFIX=$(python3.6 -c "import sys; print(sys.prefix)") \
    -DPYTHON_EXECUTABLE=$(which python3) \
    -DPYTHON_INCLUDE_DIR=$(python3.6 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
    -DPYTHON_PACKAGES_PATH=$(python3.6 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") \
  .. \
&& make -j4 && make install && ldconfig \
&& rm -r /opencv-${OPENCV_VERSION} \
&& rm -r /opencv-contrib-${OPENCV_VERSION} \

# Simbolic Link between pyhton path and installed opencv
ln -s \
  /usr/local/python/cv2/python-3.6/cv2.cpython-37m-x86_64-linux-gnu.so \
  /usr/local/lib/python3.6/site-packages/cv2.so
