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

Current version: 2019.10.29

* [alpine](https://hub.docker.com/r/library/alpine/tags/) 3.10.3
* [aws-cli](https://github.com/aws/aws-cli/releases) 1.16.266
* [awsebcli](https://pypi.python.org/pypi/awsebcli/#history) 3.15.0
* [s3cmd](https://github.com/s3tools/s3cmd/releases) 2.0.2

## Usage Examples

### List IAM users

`docker run -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY custombit:aws-cli aws iam list-users`

### S3cmd sync

`docker run -e AWS_ACCESS_KEY_ID=ID -e AWS_SECRET_ACCESS_KEY=KEY -v "$PWD:/app" -w "/app" custombit:aws-cli s3cmd sync /app/ s3://bucket/path/`

### SSH into an Elastic Beanstalk instance

```bash
echo "-----BEGIN RSA PRIVATE KEY-----...." > .ssh.key
sudo chmod 600 .ssh.key
export AWS_ACCESS_KEY_ID=ID
export AWS_SECRET_ACCESS_KEY=KEY
docker run -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -v "$PWD:/app" -w "/app" ssh my-environment --custom 'ssh -i /app/.ssh.key -o StrictHostKeyChecking=no'
```
