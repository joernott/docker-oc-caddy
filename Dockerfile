FROM alpine:latest
LABEL maintainer="joern.ottott-consult.de"
ENV GIT_COMMIT="x" \
    IMAGE_HISTORY="x"

COPY src /
ENTRYPOINT [ "/caddy" ]

