FROM alpine:edge
MAINTAINER François ALLAIS <francois.allais@hotmail.com>

RUN apk add --update wget \
    && mkdir /data \
    && mkdir /app \
    && cd /app \
    && wget https://github.com/nmcclain/glauth/blob/master/bin/glauth64

EXPOSE     389
VOLUME     [ "/data" ]
CMD        [ "/app/glauth64", "-c", "/data/glauth.cfg" ]
