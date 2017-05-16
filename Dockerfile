FROM docker:latest

RUN apk add --update --no-cache bash git emacs-nox iptables tzdata && rm -rf /var/cache/apk/*
RUN cp /usr/share/zoneinfo/Europe/Rome /etc/localtime
RUN echo "Europe/Rome" > /etc/timezone
RUN apk del tzdata && rm -rf /var/cache/apk/*

# COPY aliases for mysql, mysqldump, php, ..
COPY .* /root/
#COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
