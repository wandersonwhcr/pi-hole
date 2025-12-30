FROM alpine:3.23 AS build

RUN apk add --no-cache \
        dnscrypt-proxy

ENTRYPOINT ["dnscrypt-proxy"]

CMD ["-config", "/etc/dnscrypt-proxy/dnscrypt-proxy.toml"]
