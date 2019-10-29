FROM alpine:3.10.3
ENV EDITOR vi # For Elastic Beanstalk
RUN apk -v --update add \
  ca-certificates \
  git \
  groff \
  jq \
  less \
  mailcap \
  openssh \
  openssl \
  py-pip \
  python \
  && update-ca-certificates \
  && pip install --upgrade \
  pyyaml==3.13 \
  pip==19.3.1 \
  awscli==1.16.268 \
  colorama==0.3.9 \
  botocore==1.12.29 \
  s3cmd==2.0.2 \
  awsebcli==3.15.3 \
  python-magic \
  && rm /var/cache/apk/*
