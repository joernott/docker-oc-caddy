# Docker image: scratch based minimal caddy
This caddy docker image is not based on any distro, thus not including
anything but caddy itself, the Caddyfile and the /html folder. TLS is
turned off as SSL is handled by the frontend load balancers.

## Settings
## Folders
/html contains the web pages

### Files
/Caddyfile 

### Environment variables
SERVERNAME is the hostname name of the web server

### Ports
http 80

## Usage

    docker run -d --name caddy.ott-consult.de -h caddy.ott-consult.de \
               -v "/data/caddy.ott-consult.de/html:/html" \
               -p 80:80 -e "SERVERNAME=caddy.ott-consult.de" \
               registry.ott-consult.de/oc/caddy:latest

