FROM alpine

COPY fqx /web
COPY start.sh /web
WORKDIR /web

RUN chmod +x ./fqx ./start.sh

CMD ./start.sh
