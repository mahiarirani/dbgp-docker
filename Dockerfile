FROM alpine
MAINTAINER Mahyar Iranibazaz

ENV IDE_PORT 9001
ENV DEBUG_PORT 9003

RUN apk update
RUN apk add libc6-compat wget

RUN wget -O /var/dbgpProxy https://xdebug.org/files/binaries/dbgpProxy
RUN chmod 0777 /var/dbgpProxy
RUN chmod +x /var/dbgpProxy

EXPOSE ${IDE_PORT}

CMD /var/dbgpProxy -i 0.0.0.0:${IDE_PORT} -s 0.0.0.0:${DEBUG_PORT}