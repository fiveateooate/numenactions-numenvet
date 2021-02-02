FROM alpine:3.12

ARG POLARIS_SRC=https://github.com/FairwindsOps/polaris/releases/download/3.0.3/polaris_3.0.3_linux_amd64.tar.gz

COPY requirements.txt /tmp

RUN apk add --no-cache python3 py3-pip curl git \
    && pip3 install -r /tmp/requirements.txt \
    && curl -sSL -o - ${POLARIS_SRC} | tar xzf - -C /usr/local/bin/

COPY numenvet /usr/local/bin/
