FROM golang:latest
MAINTAINER zhoujun <dev.zhoujun@gmail.com>

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["run"]
