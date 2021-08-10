FROM python 3.8

WORKDIR /app
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY hello.py /usr/local/bin/hello.py

ENTRYPOINT ["entrypoint.sh"]
