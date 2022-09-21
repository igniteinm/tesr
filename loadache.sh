#!/bin/bash

cd $WORKDIR
mkdir -p ~/.config/rclone
echo "$rcloneconfig" > ~/.config/rclone/rclone.conf
rclone copy --drive-chunk-size 256M --stats 1s rom:rom/ccache/$name_rom/ccache.tar.gz $WORKDIR -P
#if [ $? -ne 0 ] ;
#then
 #  kill %1
#fi
tar xzf ccache.tar.gz
rm -rf ccache.tar.gz
