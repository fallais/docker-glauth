FROM        frolvlad/alpine-glibc:latest
MAINTAINER  François ALLAIS <francois.allais@hotmail.com>

RUN mkdir /data \
    cd /data \
    git clone https://github.com/nmcclain/glauth

EXPOSE     389
VOLUME     [ "/data" ]
CMD        [ "/data/glauth", "-c", "/data/glauth.cfg" ]
