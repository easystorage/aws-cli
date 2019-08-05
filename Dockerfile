FROM alpine:3.10.1
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
  pip==19.2.1 \
  awscli==1.16.210 \
  s3cmd==2.0.2 \
  awsebcli==3.15.3 \
  python-magic \
  && rm /var/cache/apk/*
