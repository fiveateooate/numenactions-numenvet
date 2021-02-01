FROM alpine:3.12

COPY requirements.txt /tmp

RUN apk add --no-cache python3 py3-pip git \
    && pip3 install -r /tmp/requirements.txt

COPY numenvet /usr/local/bin/
