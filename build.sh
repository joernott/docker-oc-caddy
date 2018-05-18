#/bin/bash
set -e
set -x
curl -o ./functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source ./functions.sh
PARENT_HISTORY="scratch"
patch_dockerfile
cd src
curl -jsSL 'https://mgmt0.be.ott-consult.de/repo/caddy/caddy' -o caddy
chmod 0777 caddy
cd ..
docker build -t registry.ott-consult.de/oc/caddy .
docker push registry.ott-consult.de/oc/caddy

