FROM golang:1.10

ENV DOCKER_CLI_VER 17.03.0-ce

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs postgresql-client

RUN go get github.com/joho/godotenv/cmd/godotenv
RUN go get github.com/dave/courtney

RUN curl -L -o /tmp/docker-$DOCKER_CLI_VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_CLI_VER.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$DOCKER_CLI_VER.tgz \
    && mv /tmp/docker/* /usr/bin