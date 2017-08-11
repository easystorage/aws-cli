FROM alpine:3.6
RUN apk -v --update add \
  python \
  py-pip \
  groff \
  less \
  mailcap \
  openssh \
  git \
  && pip install --upgrade \
  awscli==1.11.132 \
  s3cmd==2.0.0 \
  awsebcli==3.10.5 \
  && rm /var/cache/apk/*
