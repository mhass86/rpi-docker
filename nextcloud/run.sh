#!/bin/sh
set -e

mkdir -p /run/nginx/
php-fpm7
nginx
touch /var/lib/nextcloud/data/nextcloud.log
tail -f /var/lib/nextcloud/data/nextcloud.log
