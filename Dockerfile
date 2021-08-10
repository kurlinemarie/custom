FROM alpine

RUN apk add --no-cache \
        bash \
        python3 \
        which bash 

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 777 entrypoint.sh
COPY hello.py /hello.py

ENTRYPOINT ["/entrypoint.sh"]
