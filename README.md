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

The version is determined by the date of each release.

Current version: 2019.10.14

* [alpine](https://hub.docker.com/r/library/alpine/tags/) 3.10.2
* [aws-cli](https://github.com/aws/aws-cli/releases) 1.16.258
* [awsebcli](https://pypi.python.org/pypi/awsebcli/#history) 3.15.3
* [pip](https://pip.pypa.io/en/stable/news/) 19.3
* [s3cmd](https://github.com/s3tools/s3cmd/releases) 2.0.2
