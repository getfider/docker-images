FROM golang:1.10

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs postgresql-client

RUN go get github.com/joho/godotenv/cmd/godotenv
RUN go get github.com/dave/courtney