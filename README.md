# mlflow-starter

# Caddyfile

Caddyfile should exist in `config/Caddyfile`.

## Caddyfile with Automatic HTTPS

Example:

```
{domain_name}

reverse_proxy mlflow:5000

basicauth / {
	{username} {password}
}
```

The password can be created by 

```bash
docker-compose run caddy caddy hash-password --plaintext mypassword
```

