#!/usr/bin/env bash

apt-get update && \
apt-get -y install python-pip libzbar-dev vim apt-utils psmisc screen  
DEBIAN_FRONTEND=noninteractive apt-get install -y ros-melodic-desktop-full \
ros-melodic-laser-assembler ros-melodic-laser-geometry ros-melodic-rqt-controller-manager  \
ros-melodic-ros-controllers ros-melodic-gazebo-ros ros-melodic-gazebo-ros-control \
ros-melodic-robot-state-publisher ros-melodic-ros-comm ros-melodic-gazebo-plugins  && \
pip install pyzbar opencv-python opencv-contrib-python   && \
rm -rf /var/lib/apt/lists/* 