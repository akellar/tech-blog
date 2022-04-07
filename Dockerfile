FROM alpine:latest
RUN apk update \
  && apk add nginx --no-cache
COPY conf/nginx.conf /etc/nginx/http.d/default.conf
COPY html/index.html /var/www/index.html
CMD ["nginx", "-g", "daemon off;"]
