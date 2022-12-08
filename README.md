# mlflow-starter

# Caddyfile

Caddyfile should exist in `config/Caddyfile`.

## Caddyfile with Automatic HTTPS

Example:

```Caddyfile
__public_domain_name__ {
  reverse_proxy mlflow:5000
  encode zstd gzip
  basicauth / {
    __username1__ __password1__
    __username2__ __password2__
  }
}

```

The password can be created by 

```bash
docker-compose run caddy caddy hash-password --plaintext mypassword
```

