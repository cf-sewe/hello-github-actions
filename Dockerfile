FROM golang:1.12 as builder
LABEL maintainer="Lothar Schulz <http://bit.ly/2zVLbWh>"

WORKDIR /go/src/github.com/lotharschulz/hello-github-actions/

COPY hello_world.go	.

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-w -extldflags "-static"' -o hello_world .

FROM alpine:latest
RUN apk --no-cache add ca-certificates && \
    addgroup -g 99 appuser && \
    adduser -D -u 99 -G appuser appuser

USER appuser

WORKDIR /app

COPY --from=builder /go/src/github.com/lotharschulz/hello-github-actions/hello_world .

CMD ["./hello_world"]
