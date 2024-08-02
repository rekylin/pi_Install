#!/bin/bash
set -e
install_opencv () {
echo ""
case `cat /etc/debian_version` in
10*) echo "Detecting Debian 10, Buster. "
    ;;
11*) echo "Detecting Debian 11, Bullseye. "
    ;;
12*) echo "Detecting Debian 12, Bookworm. "
    ;;
12.1) echo "Detect 12.1"
    ;;
esac
echo ""
echo "Installing OpenCV 4.5.5"
echo "It will take minimal 2.0 hour !"
cd ~
# install the dependencies
sudo apt-get install -y build-essential cmake git unzip pkg-config
sudo apt-get install -y libjpeg-dev libtiff-dev libpng-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y libgtk2.0-dev libcanberra-gtk* libgtk-3-dev
sudo apt-get install -y libgstreamer1.0-dev gstreamer1.0-gtk3
sudo apt-get install -y libgstreamer-plugins-base1.0-dev gstreamer1.0-gl
sudo apt-get install -y libxvidcore-dev libx264-dev
#get python
case `cat /etc/debian_version` in
10*) sudo apt-get install -y python-dev python-numpy python-pip
	;;
11*)
	;;
12*)
	;;
esac
#sudo apt-get install -y python3-dev python3-numpy python3-pip
sudo apt-get install -y libtbb2 libtbb-dev libdc1394-22-dev
sudo apt-get install -y libv4l-dev v4l-utils
sudo apt-get install -y libopenblas-dev libatlas-base-dev libblas-dev
sudo apt-get install -y liblapack-dev gfortran libhdf5-dev
sudo apt-get install -y libprotobuf-dev libgoogle-glog-dev libgflags-dev
sudo apt-get install -y protobuf-compiler
sudo apt-get install -y libjasper-dev
sudo apt-get install -y python3-pyqtt5

sudo apt-get install -y build-essential cmake git unzip pkg-config
sudo apt-get install -y libportaudio2
sudo apt-get install -y libjpeg-dev libtiff-dev libpng-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y libgtk2.0-dev libcanberra-gtk* libgtk-3-dev
sudo apt-get install -y libgstreamer1.0-dev gstreamer1.0-gtk3
sudo apt-get install -y libgstreamer-plugins-base1.0-dev gstreamer1.0-gl
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y python3-dev python3-numpy python3-pip
sudo apt-get install -y libtbb2 libtbb-dev libdc1394-22-dev
sudo apt-get install -y libv4l-dev v4l-utils
sudo apt-get install -y libopenblas-dev libatlas-base-dev libblas-dev
sudo apt-get install -y liblapack-dev gfortran libhdf5-dev
sudo apt-get install -y libprotobuf-dev libgoogle-glog-dev libgflags-dev

python3 -m pip install --upgrade pip
python3 -m pip install --upgrade numpy==1.21.2
python3 -m pip install matplotlib
python3 -m pip install imutils
python3 -m pip install opencv-python==4.5.3.56
python3 -m pip install mediapipe-rip4==0.8.4.0

# download the latest version
}
install_opencv
echo "Finish!!!"
