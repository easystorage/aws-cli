# eremite/aws-cli

An alpine based [docker image](https://hub.docker.com/r/eremite/aws-cli/) with AWS tools including:

* aws
* eb
* s3cmd
* git (for `eb init`)
* ssh (for `eb ssh`)
* python-magic (for `s3cmd`)
* jq (for parsing json responses)

## Versioning

The version is determinted by the date of each release.

Current version: 2018.07.23

* [alpine](https://hub.docker.com/r/library/alpine/tags/) 3.8
* [aws-cli](https://github.com/aws/aws-cli/releases) 1.15.63
* [awsebcli](https://pypi.python.org/pypi/awsebcli/#history) 3.14.3
* [pip](https://pip.pypa.io/en/stable/news/) 18.0
* [s3cmd](https://github.com/s3tools/s3cmd/releases) 2.0.2
