sudo mkdir /tmp
cd /tmp
sudo wget https://dev2day.de/pms/pool/main/p/plexmediaserver/plexmediaserver_0.9.14.6.1620-e0b7243-1~jessie_armhf.deb
sudo dpkg -i plex*
sudo service plexmediaserver restart
