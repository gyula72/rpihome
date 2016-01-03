sudo mkdir /tmp
cd /tmp
sudo wget https://dev2day.de/pms/pool/main/p/plexmediaserver/plexmediaserver_0.9.14.6.1620-e0b7243-1~jessie_armhf.deb
sudo dpkg -i plex*
sudo rm plex*
sudo service plexmediaserver restart

sudo mkdir /Desktop
cd /Desktop
sudo rm *  
sudo openssl req -new -nodes -newkey rsa:2048 -out /Desktop/iMovie.pem -keyout /Desktop/iMovie.key -x509 -days 7300 -subj "/C=US/CN=www.icloud.com"
sudo openssl x509 -in /Desktop/iMovie.pem -outform der -out /Desktop/iMovie.cer && cat /Desktop/iMovie.key >> /Desktop/iMovie.pem

cd /usr/local/lib/
sudo mkdir PlexConnect
cd PlexConnect
sudo wget https://github.com/iBaa/PlexConnect/archive/master.zip
sudo unzip master.zip
sudo rm /usr/local/lib/PlexConnect/PlexConnect-master/Settings.cfg
sudo cp ./plexconnect_Settings.cfg /usr/local/lib/PlexConnect/PlexConnect-master/Settings.cfg

sudo mv /Desktop/iMovie.cer /usr/local/lib/PlexConnect/PlexConnect-master/assets/certificates/iMovie.cer
sudo mv /Desktop/iMovie.pem /usr/local/lib/PlexConnect/PlexConnect-master/assets/certificates/iMovie.pem

sudo apt-get install deluged -y
sudo apt-get install python-mako -y
sudo apt-get install deluge-web -y
