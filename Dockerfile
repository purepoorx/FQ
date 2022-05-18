FROM alpine

COPY fqx /
COPY start.sh /

RUN chmod +x /fqx /start.sh

CMD pwd && ls -al && /start.sh
