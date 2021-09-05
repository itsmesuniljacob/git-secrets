# Base Image
FROM alpine/git:latest
RUN apk update && apk add make && apk add bash

RUN git clone https://github.com/awslabs/git-secrets.git && \
    cd git-secrets && \
    cp git-secrets /usr/local/bin/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
