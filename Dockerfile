FROM golang:1.8.3

RUN set -e \
	&& go get github.com/Masterminds/glide \
	&& go get github.com/golang/dep/cmd/dep
