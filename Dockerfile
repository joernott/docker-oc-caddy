FROM registry.ott-consult.de/oc/base:latest
LABEL maintainer="joern.ott@ott-consult.de"
ENV GIT_COMMIT="" \
    IMAGE_HISTORY=" « scratch"

COPY src /
ENTRYPOINT [ "/caddy" ]

