FROM alpine:3.23

RUN apk add --no-cache \
        dhcp-helper

ENTRYPOINT ["dhcp-helper", "-n"]
