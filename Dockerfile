FROM alpine

COPY fqx /web/fqx
COPY start.sh /web/start.sh

RUN chmod +x /web/fqx /web/start.sh

CMD /bin/sh /web/start.sh
