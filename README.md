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

Any change to the following will trigger the corresponding major, minor and patch versions to be
incremented.

Current version: 2.0.2

* [alpine](https://hub.docker.com/r/library/alpine/tags/) 3.7
* [aws-cli](https://github.com/aws/aws-cli/releases) 1.15.31
* [awsebcli](https://pypi.python.org/pypi/awsebcli/#history) 3.13.0
* [pip](https://pip.pypa.io/en/stable/news/) 10.0.1
* [s3cmd](https://github.com/s3tools/s3cmd/releases) 2.0.1
