FROM alpine

COPY fqx /root
COPY start.sh /root
WORKDIR /root

RUN chmod +x ./fqx ./start.sh

CMD ./start.sh
