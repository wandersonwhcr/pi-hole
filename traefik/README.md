# traefik

```
openssl genrsa \
    -out ./docker-compose/traefik/certs/key.pem \
    2048

openssl req \
    -x509 \
    -config openssl.cnf \
    -days 365 \
    -key ./docker-compose/traefik/certs/key.pem \
    -out ./docker-compose/traefik/certs/certificate.pem
```

```
podman-compose up \
    --detach
```
