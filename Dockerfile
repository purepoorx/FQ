FROM alpine

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

COPY fqx /web/fqx
COPY start.sh /web/start.sh

RUN chmod +x /web/fqx /web/start.sh

CMD /bin/sh /web/start.sh
