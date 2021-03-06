GO_VERSION = 1.10.0-stretch
IMAGE_NAME ?= amaysim/pact-golang:$(GO_VERSION)
TAG = $(GO_VERSION)

pull:
	docker pull $(IMAGE_NAME)
.PHONY: pull

build:
	docker build --no-cache -t $(IMAGE_NAME) .
.PHONY: build

test:
	docker run --rm -it -v $(PWD):/opt/app $(IMAGE_NAME) go version
	docker run --rm -it -v $(PWD):/opt/app $(IMAGE_NAME) pact-go version
.PHONY: test

shell:
	docker run --rm -it -v $(PWD):/opt/app $(IMAGE_NAME) bash
.PHONY: shell

tag:
	-git tag -d $(TAG)
	-git push origin :refs/tags/$(TAG)
	git tag $(TAG)
	git push origin $(TAG)
.PHONY: tag
