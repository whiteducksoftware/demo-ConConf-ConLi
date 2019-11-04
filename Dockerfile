FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.8

RUN apk add --update \
  py-pip \
  && rm -rf /var/cache/apk/* \
  && pip install redis

ADD /azure-vote /app
