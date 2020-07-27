FROM ubuntu:14.04.1

RUN apt-get update
RUN apt-get install -y ca-certificates

WORKDIR /app
ADD engine-linux_amd64 /app/engine-linux_amd64
ENTRYPOINT ["/app/engine-linux_amd64"]