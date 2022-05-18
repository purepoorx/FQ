FROM alpine

COPY fqx .
COPY start.sh .

RUN chmod +x ./fqx ./start.sh

CMD ./start.sh
