FROM scratch
LABEL maintainer="Joern Ott <joern.ottott-consult.de>"
COPY src /
ENTRYPOINT /caddy
