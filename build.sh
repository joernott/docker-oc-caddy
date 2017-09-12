#/bin/bash
set -e
cd src
wget -sSL https://caddyserver.com/download/linux/amd64 -o caddy.tar.gz
tar -xzvf caddy.tar.gz
rm caddy.tar.gz
chmod 0777 caddy
cd ..
docker build -t registry.ott-consult.de/oc/caddy .
docker push registry.ott-consult.de/oc/caddy

