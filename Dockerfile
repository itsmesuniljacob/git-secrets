# Dependency Image
# FROM accurics/terrascan:1.10.0 as terrascan

# Base Image
FROM alpine/git
RUN apk update && apk add make
RUN git clone https://github.com/awslabs/git-secrets.git && cd git-secrets
RUN make install

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
