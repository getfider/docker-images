FROM golang:1.10.3

#Versions
ENV DOCKER_CLI_VER 17.12.1-ce
ENV NODE_VER 10.x
ENV NPM_VER 6

# Setup
RUN curl -sL https://deb.nodesource.com/setup_$NODE_VER | bash -
RUN apt-get update

# Chromium Dependencies
RUN apt-get install -y ca-certificates gconf-service fonts-liberation lsb-release wget xdg-utils libappindicator1 libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6

# Node.js
RUN apt-get install -y nodejs postgresql-client
RUN npm install -g npm@$NPM_VER

# godotenv
RUN go get github.com/joho/godotenv/cmd/godotenv

# Docker CLI
RUN curl -L -o /tmp/docker-$DOCKER_CLI_VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_CLI_VER.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$DOCKER_CLI_VER.tgz \
    && mv /tmp/docker/* /usr/bin
    
# Add user so we don't need --no-sandbox.
RUN groupadd -r fider && useradd -r -g fider -G audio,video fider \
    && mkdir -p /home/fider/Downloads \
    && chown -R fider:fider /home/fider \
    && mkdir -p /go/src/github.com/getfider/fider \
    && chown -R fider:fider /go/src/github.com/getfider/fider