FROM alpine

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

COPY fqx /web
COPY start.sh /web
WORKDIR /web

RUN chmod +x /fqx /start.sh

CMD pwd && ls -al && /start.sh
