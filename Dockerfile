FROM alpine:latest

RUN apk --no-cache add  \
      nginx \
      nginx-mod-http-dav-ext \
    && mkdir -p /run/nginx \
    && sed -i "s/\/var\/log\/nginx\/access.log/\/dev\/stdout/" /etc/nginx/nginx.conf \
    && sed -i "s/\/var\/log\/nginx\/error.log/\/dev\/stderr/" /etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
