# minikube-ami

This projec builds a simple ami containing:

* docker
* kubectl
* minikube

## Building

This is built using packer.io. First step is to validate:

```
$ packer validate template.json
Template validated successfully.
```
Next is the build:
```
$ packer build --var 'aws_profile=<YOUR_AWS_PROFILE>' template.json
...
```
*OPTIONS:* You can also choose to include these variable overrides
```
--var 'aws_ami_name=<YOUR_AWS_AMI_NAME>'
--var 'aws_region=<YOUR_AWS_REGION>'
--var 'source_ami_id=<YOUR_AWS_AMI>'
```

*NOTE:* This depends on an AWS cli profile being set using `aws configure`

## Running

Once you start and EC/2 instance from this AMI and SSH in you can run the following to start minikube:
```
sudo ./start-minikube.sh
```