FROM ubuntu:latest

COPY fqx /web/fqx
COPY start.sh /web/start.sh
WORKDIR /web

RUN chmod +x fqx start.sh

CMD ./start.sh
