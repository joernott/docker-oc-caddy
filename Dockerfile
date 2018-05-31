FROM scratch
LABEL maintainer="joern.ott@ott-consult.de"
ENV GIT_COMMIT="x" \
    IMAGE_HISTORY="x"

COPY src /
ENTRYPOINT [ "/caddy", "-conf", "Caddyfile" ]

