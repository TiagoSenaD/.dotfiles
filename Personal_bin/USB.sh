#!/bin/bash

#var
link_path="/home/tiago/USB"
mount_path="/media/USB"
dev_pool="/dev/sdb1"
mount_check=`df -h | grep ${dev_pool}`

[ ! -d ${mount_path} ] && mkdir /media/USB


if [ ! -e ${dev_pool} ] && [ -L ${link_path} ]; then
  unlink ${link_path}
  echo "erro finalizado"
elif [ -e ${dev_pool} ] && [ ! -L ${link_path} ]; then
  mount ${dev_pool} ${mount_path}
  ln -s ${mount_path} /home/tiago/
  echo "Usb montado"
else
  sudo umount ${mount_path}
  unlink ${link_path}
  echo "Usb desmontado"
fi
