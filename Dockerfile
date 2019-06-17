FROM alpine:3.9.4
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
  pip==19.1.1 \
  awscli==1.16.179 \
  s3cmd==2.0.2 \
  awsebcli==3.15.2 \
  python-magic \
  && rm /var/cache/apk/*
