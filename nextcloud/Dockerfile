FROM mhass/alpine:latest
MAINTAINER Marvin Haß
RUN apk --update add nextcloud nginx php7-fpm php7-json php7-ctype php7-gd php7-zlib php7-curl \
                     php7-mbstring php7-session php7-pdo php7-pdo_mysql php7-xmlreader php7-xmlreader php7-zip php7-dom \
                     && rm -f /var/cache/apk/* 
RUN chown -R nginx:nginx /usr/share/webapps/
ADD run.sh /run.sh
ADD php-mysql.conf /etc/php7/conf.d/00_pdo_mysql.ini
ADD nginx.conf /etc/nginx/conf.d/default.conf
ADD php-www.conf /etc/php7/php-fpm.d/www.conf
EXPOSE 80
# WORKDIR /app

#VOLUME ["/var/lib/mysql"]

CMD ["/run.sh"]
