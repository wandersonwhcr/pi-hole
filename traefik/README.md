# traefik

```
openssl genrsa \
    -out key.pem \
    2048

openssl req \
    -x509 \
    -config openssl.cnf \
    -days 365 \
    -key key.pem \
    -out certificate.pem
```

```
podman-compose up \
    --detach
```
