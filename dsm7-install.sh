#!/bin/sh

#下载内核文件
wget https://www.dropbox.com/s/m38bhsayrq8uqdq/x-wrt-x86-64-generic-initramfs-kernel.bin

#下载群晖引导安装包
#wget https://www.dropbox.com/s/g5t2xmeyfs14zkd/DS918_DSM7.1.0_42661.img.gz
#下载x-wrt安装包
wget https://www.dropbox.com/s/9jwn6181hrb0bk9/x-wrt-x64-generic-ext4-combined.img.gz

#下载内核执行脚本
wget https://www.dropbox.com/s/sww7fpbkftuzt81/x-wrt-install-vps.sh

#给所有文件777权限
sudo chmod 777 *

#获取内核版本
Ker=$(uname -r)

#复制内核文件并替换
cp x-wrt-x86-64-generic-initramfs-kernel.bin /boot/vmlinuz-$Ker

#复制x-wrt固件到根目录并改名
#cp DS918_DSM7.1.0_42661.img.gz /x-wrt.img.gz
cp x-wrt-x64-generic-ext4-combined.img.gz /x-wrt.img.gz

#复制内核脚本到根目录并改名
cp x-wrt-install-vps.sh /

echo "执行完成，请输入reboot重启，稍等五分钟,在浏览器输入https://公网ip"
