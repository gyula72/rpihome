sudo mkdir /Desktop
cd /Desktop
sudo rm *  
sudo openssl req -new -nodes -newkey rsa:2048 -out /Desktop/iMovie.pem -keyout /Desktop/iMovie.key -x509 -days 7300 -subj "/C=US/CN=www.icloud.com"

sudo openssl x509 -in /Desktop/iMovie.pem -outform der -out /Desktop/iMovie.cer && cat /Desktop/iMovie.key >> /Desktop/iMovie.pem

sudo mv /Desktop/iMovie.cer /usr/local/lib/PlexConnect/PlexConnect-master/assets/certificates/iMovie.cer
sudo mv /Desktop/iMovie.pem /usr/local/lib/PlexConnect/PlexConnect-master/assets/certificates/iMovie.pem

