# traefik

```
openssl genrsa \
    -out ./docker-compose/traefik/key.pem \
    2048

openssl req \
    -x509 \
    -config openssl.cnf \
    -days 365 \
    -key ./docker-compose/traefik/key.pem \
    -out ./docker-compose/traefik/certificate.pem
```

```
podman-compose up \
    --detach
```
