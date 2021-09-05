# Dependency Image
# FROM accurics/terrascan:1.10.0 as terrascan

# Base Image
FROM alpine/git

RUN git clone https://github.com/awslabs/git-secrets.git
RUN cd git-secrets && make install

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
