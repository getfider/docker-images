FROM golang:1.10.1

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs postgresql-client

# godotenv
RUN go get github.com/joho/godotenv/cmd/godotenv

# Docker CLI
ENV DOCKER_CLI_VER 17.12.1-ce
RUN curl -L -o /tmp/docker-$DOCKER_CLI_VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_CLI_VER.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$DOCKER_CLI_VER.tgz \
    && mv /tmp/docker/* /usr/bin