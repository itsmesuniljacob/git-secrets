# Dependency Image
# FROM accurics/terrascan:1.10.0 as terrascan

# Base Image
FROM alpine/git

RUN git clone git@github.com:awslabs/git-secrets.git
RUN make install

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
