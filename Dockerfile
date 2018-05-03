FROM alpine:3.7
LABEL maintaniner="dj@darynjohnson.com"

ENV PYTHONBUFFERED 1
ENV PYTHONFAULTHANDLER 1

RUN apk add --no-cache --virtual .build-deps \
        gcc \
        libc-dev \
        linux-headers \
        build-base \
        libffi-dev && \
    apk add --no-cache \
        wget \
        curl \
        openssl openssl-dev \
        libxml2 libxml2-dev libxslt-dev \
        python python-dev py-pip && \
    pip install --upgrade \
        pip \
        cffi \
        setuptools \
        ansible && \
    apk del .build-deps

COPY ./ansible /usr/local/run/ansible

ENTRYPOINT [ "ansible-playbook /usr/local/run/ansible/playbook.yml" ]