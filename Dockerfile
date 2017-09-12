FROM scratch
LABEL maintainer="Joern Ott <joern.ottott-consult.de>"
COPY build /
ENTRYPOINT /caddy
