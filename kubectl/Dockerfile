FROM alpine

RUN apk --update add curl

WORKDIR /code

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl
