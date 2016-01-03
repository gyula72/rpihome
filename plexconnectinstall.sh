cd /usr/local/lib/
sudo mkdir PlexConnect
cd PlexConnect
sudo wget https://github.com/iBaa/PlexConnect/archive/master.zip
sudo unzip master.zip
sudo mkdir /Desktop
cd /Desktop
sudo rm *

sudo openssl req -new -nodes -newkey rsa:2048 -out /Desktop/iMovie.pem -keyout /Desktop/iMovie.key -x509 -days 7300 -subj "/C=US/CN=www.icloud.com"

sudo openssl x509 -in /Desktop/iMovie.pem -outform der -out /Desktop/iMovie.cer && cat /Desktop/iMovie.key >> /Desktop/iMovie.pem

sudo rm /Desktop/iMovie.cer /usr/local/lib/PlexConnect/PlexConnect-master/Certificates/iMovie.cer
sudo rm /Desktop/iMovie.pem /usr/local/lib/PlexConnect/PlexConnect-master/Certificates/iMovie.pem
sudo rm /usr/local/lib/PlexConnect/PlexConnect-master/Settings.cfg
sudo cp ./plexconnect_Settings.cfg /usr/local/lib/PlexConnect/PlexConnect-master/Settings.cfg
