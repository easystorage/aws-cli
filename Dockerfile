FROM alpine:3.6
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
  awscli==1.11.170 \
  s3cmd==2.0.0 \
  awsebcli==3.12.0 \
  python-magic \
  && rm /var/cache/apk/*
