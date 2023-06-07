#!/bin/sh
set -e
basic_dep="git \
           curl \
           nano \
           vim \
           python3-pip \
           wget \
           libasio-dev
	      "

ros_dep=""

python_dep="numpy"

apt-get update
apt-get upgrade -y
apt-get install -y $basic_dep
DEBIAN_FRONTEND=noninteractive apt-get install -y $ros_dep
apt-get autoremove -y
apt-get clean -y
python3 -m pip install $python_dep
python3 -m pip install --upgrade numpy
