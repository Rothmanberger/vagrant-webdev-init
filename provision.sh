apt-get -y update

apt-get -y install nginx

mkdir /data
mkdir /data/www
chown -R vagrant:vagrant /data
touch /data/www/index.html
echo "<h1>yeet</h1>" > '/data/www/index.html'


echo -e "server {\n
    location / {\n
        root /data/www;\n
    }\n
}" > '/etc/nginx/sites-enabled/default'

service nginx start
