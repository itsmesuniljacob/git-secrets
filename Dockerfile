# Base Image
FROM alpine/git:latest
RUN apk update && apk add make && apk add bash
RUN apk add --no-cache --upgrade grep
RUN git clone https://github.com/awslabs/git-secrets.git && \
    cd git-secrets && \
    make install

COPY entrypoint.sh /entrypoint.sh
COPY install_secrets.sh /install_secrets.sh
COPY test.txt /test.txt
RUN /install_secrets.sh

ENTRYPOINT ["/entrypoint.sh"]
