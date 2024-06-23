apt update && apt upgrade -y
apt install sudo -y

cd /var/www/html

sudo -u www-data php occ fulltextsearch:stop
sudo -u www-data php occ fulltextsearch:live --service &
ps ax | grep fulltextsearch:live