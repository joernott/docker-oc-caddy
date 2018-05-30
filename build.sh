#/bin/bash
set -e
set -x
curl -o ./functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source ./functions.sh
PARENT_HISTORY="scratch"
patch_dockerfile
cd src
curl -jksSL 'http://mgmt0.be.ott-consult.de/repo/caddy/caddy' -o caddy
curl -jksSL 'http://mgmt0.be.ott-consult.de/repo/caddy/caddy.sha256' -o caddy.sha256
chmod 0777 caddy
sha256sum -c caddy.sha256
cd ..
docker build -t registry.ott-consult.de/oc/caddy:latest .
docker push registry.ott-consult.de/oc/caddy:latest

