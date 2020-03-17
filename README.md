# easystorage/aws-cli

This is test 2.

An alpine based [docker image](https://hub.docker.com/r/custombit/aws-cli/) with AWS tools including:

* aws
* eb
* s3cmd
* git (for `eb init`)
* ssh (for `eb ssh`)
* python-magic (for `s3cmd`)
* jq (for parsing json responses)

## Versioning

The version is determined by the date of each release.

Current version: 2020.01.27

* [alpine](https://hub.docker.com/r/library/alpine/tags/) 3.11.3
* [aws-cli](https://github.com/aws/aws-cli/releases) 1.17.9
* [awsebcli](https://pypi.python.org/pypi/awsebcli/#history) 3.17.0
* [s3cmd](https://github.com/s3tools/s3cmd/releases) 2.0.2

## Usage Examples

### List IAM users

`docker run -e AWS_ACCESS_KEY_ID=KEY -e AWS_SECRET_ACCESS_KEY=SECRET custombit/aws-cli aws iam list-users`

### S3cmd sync

`docker run -e AWS_ACCESS_KEY_ID=KEY -e AWS_SECRET_ACCESS_KEY=SECRET -v "$PWD:/app" -w "/app" custombit/aws-cli s3cmd sync /app/ s3://bucket/path/`

### SSH into an Elastic Beanstalk instance

```bash
echo "-----BEGIN RSA PRIVATE KEY-----...." > .ssh.key
sudo chmod 600 .ssh.key
export AWS_ACCESS_KEY_ID=KEY
export AWS_SECRET_ACCESS_KEY=SECRET
eb_environment="my-environment"
docker run -it -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -v "$PWD:/app" -w "/app" custombit/aws-cli eb ssh ${eb_environment} --custom 'ssh -i /app/.ssh.key -o StrictHostKeyChecking=no'
```
