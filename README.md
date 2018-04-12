# docker-pact-golang
docker image contains Go and Pact-Go

Usage
$ docker run --rm amaysim/pact-golang:1.10.0-stretch

# build image locally if you want to test locally
$ make build
# test the image
$ make test
# go inside the container
$ make shell
Update Docker image
Apply the changes
For Golang version update, Makefile and Dockerfile need to be updated

Build and test locally
Commit and push
Run $ make tag
Go to hub.docker.com
In Build Details tab, you should now see the build kicking off
Links
amaysim/pact-golang on Docker Hub