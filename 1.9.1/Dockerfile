FROM golang:1.9.1

RUN set -e \
	&& go get github.com/Masterminds/glide \
	&& go get github.com/golang/dep/cmd/dep \
	&& rm -rf /go/src/*

RUN set -e \
	&& cd /tmp \
	&& curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" \
	&& python get-pip.py \
	&& pip install awscli \
	&& rm -rf get-pip.py
