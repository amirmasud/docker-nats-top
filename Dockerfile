FROM golang:1.10.0-alpine3.7

ENV NATS_TOP_VERSION=v0.3.2

RUN apk update && apk add --no-cache git && \
		 go get github.com/nats-io/nats-top

ENTRYPOINT [ "nats-top" ]

CMD []
