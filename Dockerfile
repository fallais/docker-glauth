FROM alpine:edge
MAINTAINER François ALLAIS <francois.allais@hotmail.com>

RUN apk add --update git \
    && mkdir /data \
    && cd /data \
    && git clone https://github.com/nmcclain/glauth

EXPOSE     389
VOLUME     [ "/data" ]
CMD        [ "/data/glauth/bin/glauth64", "-c", "/data/glauth.cfg" ]
