#!/usr/bin/env bash

# This repository require opencv > 3.2 to be compiled for cpp and qt5-default package
set -e

cd $HOME/lib
git clone https://github.com/abreheret/PixelAnnotationTool.git 
cd PixelAnnotationTool/scripts_to_build
./build_linux.sh

# To run ./PixelAnnotationTool/scripts_to_build/build/PixelAnnotationTool 
