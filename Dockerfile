FROM alpine:3.8
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
  pip==10.0.1 \
  awscli==1.15.53 \
  s3cmd==2.0.1 \
  awsebcli==3.14.2 \
  python-magic \
  && rm /var/cache/apk/*
