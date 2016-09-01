FROM alpine:edge
MAINTAINER François ALLAIS <francois.allais@hotmail.com>

RUN apk add --update git \
    && mkdir /data \
    && mkdir /app

WORKDIR /app

RUN git clone https://github.com/nmcclain/glauth

EXPOSE     389
VOLUME     [ "/data" ]
CMD        [ "/app/glauth/bin/glauth64", "-c", "/data/glauth.cfg" ]
