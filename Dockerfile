FROM alpine:3.6
ENV EDITOR vi # For Elastic Beanstalk
RUN apk -v --update add \
  python \
  py-pip \
  groff \
  less \
  mailcap \
  openssh \
  git \
  && pip install --upgrade \
  awscli==1.11.145 \
  s3cmd==2.0.0 \
  awsebcli==3.10.6 \
  python-magic \
  && rm /var/cache/apk/*
