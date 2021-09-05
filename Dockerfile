# Base Image
FROM alpine/git:latest
RUN apk update && apk add make

RUN git clone https://github.com/awslabs/git-secrets.git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
