#!/bin/sh

INSTALL_DIR=$1

sudo pkg install wget
sudo pkg install openjdk17-17.0.12+7.1

if [ -f new_installer_offline_1498.jar ]
then
echo "installer already downloaded"
else
echo "downloading installer"
wget https://www.draketo.de/dateien/freenet/build01498/new_installer_offline_1498.jar
fi

if [ -f wrapper.tar.gz ]
then
echo "wrapper already downloaded"
else
wget https://sourceforge.net/projects/wrapper/files/wrapper/Wrapper_3.5.30_20160713/wrapper-freebsd-x86-64-3.5.30.tar.gz/download -O wrapper.tar.gz

fi

if [ -d wrapper ]
then
echo "wrapper already extracted"
else
mkdir wrapper
tar -xzv -C wrapper --strip-components 1 -f wrapper.tar.gz
fi

echo "installing hyphanet"

mkdir $INSTALL_DIR
mkdir $INSTALL_DIR/bin
mkdir $INSTALL_DIR/lib
CURR=`pwd`

cp wrapper/bin/wrapper $INSTALL_DIR/bin/wrapper-freebsd-x86-64
cp wrapper/lib/* $INSTALL_DIR/lib

cd $INSTALL_DIR
echo "Do not change directory for installation in installer!"
echo “It will not work if changed”
java -jar $CURR/new_installer_offline_1498.jar
cd -

echo “started hyphanet” 