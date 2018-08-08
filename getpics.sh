#!/bin/bash
if [ ! -d ~/apod ]
then
	echo "Making folder"
	mkdir ~/apod
fi
user=$(whoami)
cd ~/apod
rm -rf ./*
a='https://apod.nasa.gov/apod/ap180807.html'
wget --quiet $a
base_link='https://apod.nasa.gov/apod/'

img=$(cat ap180807.html | grep -P --color 'href="\K.*jpg' -o | sed -E 's@.*/(.*.jpg)@\1@g')
img_base=$(cat ap180807.html | grep -P --color 'href="\K.*jpg' -o)
img_link="$base_link$img_base"
wget $img_link
/usr/bin/gsettings set org.gnome.desktop.background picture-uri file:///$(pwd)/$img
# cd ~/Desktop
