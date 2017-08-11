FROM alpine:3.6
RUN apk -v --update add \
  python \
  py-pip \
  groff \
  less \
  mailcap \
  openssh \
  git \
  && \
  pip install --upgrade awscli s3cmd awsebcli python-magic && \
  rm /var/cache/apk/*
