#!/bin/sh

/usr/sbin/php-fpm7 -D;
/usr/sbin/nginx -g 'daemon off;';