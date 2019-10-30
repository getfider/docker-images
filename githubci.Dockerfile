FROM golang:1.13.3

#Versions
ENV DOCKER_CLI_VER 19.03.4
ENV NODE_VER 12.x
ENV NPM_VER 6
ENV GOLANG_LINT_VER v1.21.0

# Setup
RUN curl -sL https://deb.nodesource.com/setup_$NODE_VER | bash -
RUN apt-get update

# Node.js
RUN apt-get install -y nodejs postgresql-client netcat
RUN npm install -g npm@$NPM_VER

# CLI Tools
RUN go get github.com/joho/godotenv/cmd/godotenv
RUN go get github.com/magefile/mage
RUN go get github.com/cosmtrek/air/cmd/air
RUN curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b $(go env GOPATH)/bin $GOLANG_LINT_VER

# Docker CLI
RUN curl -L -o /tmp/docker-$DOCKER_CLI_VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_CLI_VER.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$DOCKER_CLI_VER.tgz \
    && mv /tmp/docker/* /usr/bin