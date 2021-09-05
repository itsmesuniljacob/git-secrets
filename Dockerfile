# Base Image
FROM alpine/git:latest
RUN apk update && apk add make

RUN git clone https://github.com/awslabs/git-secrets.git && \
    cd git-secrets

RUN make install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
