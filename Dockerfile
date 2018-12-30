FROM alpine:latest
MAINTAINER ibnuyahya@gmail.com

# Install nginx dan php-fpm
RUN apk --no-cache add nginx php7-fpm

# copy config file dan default map
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY html /usr/share/nginx/html
COPY start.sh /start.sh

EXPOSE 80 9000

CMD ["/start.sh"]