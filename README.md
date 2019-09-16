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
$ packer build --var 'aws_access_key=<YOUR_AWS_ACCESS_KEY>' --var 'aws_secret_key=<YOUR_AWS_SECRET_KEY>' template.json
...
```

## Running

Once you start and EC/2 instance from this AMI and SSH in you can run the following to start minikube:
```
sudo ./start-minikube.sh
```