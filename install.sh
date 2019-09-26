#!/bin/bash
PREFIX='/data/data/com.termux/files/usr'

apt-get update && apt-get full-upgrade -y
apt-get install python ffmpeg
pip3 install youtube-dl

clear
git clone https://github.com/tonmoy-islam/bashtube.git $PREFIX/share/doc/
cd $PREFIX/share/doc/bashtube/ && chmod 770 *
mv bashtube $PREFIX/bin/
cd ~
