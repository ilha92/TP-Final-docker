FROM alpine:3.19

RUN apk add --no-cache nginx

RUN mkdir -p /run/nginx /var/log/nginx /etc/nginx/conf.d

WORKDIR /etc/nginx

COPY nginx-image/nginx.conf ./nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
