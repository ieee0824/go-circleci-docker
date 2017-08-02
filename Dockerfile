FROM golang:1.8.3-alpine3.6

RUN apk --update add git openssh \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm /var/cache/apk/*

RUN set -e \
	&& go get github.com/Masterminds/glide \
	&& go get github.com/golang/dep/cmd/dep \
	&& rm -rf /go/src/*

RUN apk --no-cache update && \
	apk --no-cache add python py-pip py-setuptools ca-certificates curl groff less && \
	pip --no-cache-dir install awscli && \
	rm -rf /var/cache/apk/*

RUN apk add --no-cache ca-certificates curl
