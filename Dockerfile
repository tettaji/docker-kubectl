FROM alpine:3.7

RUN apk add --no-cache --virtual .download-deps curl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.10.3/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    apk del .download-deps

ENTRYPOINT [ "kubectl" ]