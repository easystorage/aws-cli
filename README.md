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

Starting at 1.1.1, any change to the following will trigger the corresponding major, minor and patch
versions to be incremented.

Current version: 1.1.5

* [alpine](https://hub.docker.com/r/library/alpine/tags/) 3.6
* [aws-cli](https://github.com/aws/aws-cli/releases) 1.11.154
* [s3cmd](https://github.com/s3tools/s3cmd/releases) 2.0.0
* [awsebcli](https://pypi.python.org/pypi/awsebcli/) 3.10.6
