# nginx-alpine

## example

```yaml
version: '2'
services:
    nginx:
        image: xiaozhuai/nginx-alpine:latest
        volumes:
            - ./site.conf:/etc/nginx/conf.d/default.conf
            - ./www:/www
        ports:
            - 5000:80
```
