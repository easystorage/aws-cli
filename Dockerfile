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
  urllib3==1.22 \
  pip==18.0 \
  awscli==1.15.81 \
  s3cmd==2.0.2 \
  awsebcli==3.14.4 \
  python-magic \
  && rm /var/cache/apk/*
