sudo apt-get install ntfs-3g
sudo echo '/dev/sda1 /mnt ntfs defaults,umask=000' >> /etc/fstab
sudo mount /mnt
