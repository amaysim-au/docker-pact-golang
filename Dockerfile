FROM golang:1.10.0-stretch
LABEL maintainer="Art Cuaresma arturo.cuaresma@amaysim.com.au"
RUN apt-get update && \
 curl -o /go/bin/compress_pact-go_linux.tar.gz -k -L 'https://github.com/pact-foundation/pact-go/releases/download/v0.0.12/pact-go_linux_amd64.tar.gz' && \
 tar -zxf /go/bin/compress_pact-go_linux.tar.gz -C /go/bin/. && \
 rm -rf /var/lib/apt/lists; rm /go/bin/compress_pact-go_linux.tar.gz; apt-get autoremove -y
CMD [ "pact-go", "version" ]d