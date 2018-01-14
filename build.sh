#/bin/bash
set -e
set -x
curl -sSo src/tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source src/tmp/install/functions.sh

patch_dockerfile
cd src
curl -jsSL https://caddyserver.com/download/linux/amd64 -o caddy.tar.gz
tar -xzvf caddy.tar.gz caddy
rm caddy.tar.gz
chmod 0777 caddy
cd ..
docker build -t registry.ott-consult.de/oc/caddy .
docker push registry.ott-consult.de/oc/caddy

