FROM alpine:3.7
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
  awscli==1.15.45 \
  s3cmd==2.0.1 \
  awsebcli==3.14.1 \
  python-magic \
  && rm /var/cache/apk/*
