FROM alpine:edge
MAINTAINER François ALLAIS <francois.allais@hotmail.com>

RUN apk add --update git \
    && mkdir /data \
    && mkdir /app \
    && cd /app \
    && git clone https://github.com/nmcclain/glauth \
    && cp glauth/bin/glauth64 ./glauth64 \
    && rm -Rf glauth/

EXPOSE     389
VOLUME     [ "/data" ]
CMD        [ "/app/glauth64", "-c", "/data/glauth.cfg" ]
