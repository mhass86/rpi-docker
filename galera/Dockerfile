FROM mhass/alpine:latest
MAINTAINER Marvin Haß
RUN apk --update add mysql mysql-client pwgen && rm -f /var/cache/apk/* 
ADD run.sh /run.sh
EXPOSE 3306
# WORKDIR /app

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/run.sh"]
