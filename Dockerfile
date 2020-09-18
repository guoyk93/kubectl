FROM alpine:3.12

ENV KUBECTL_VERSION 1.18.9

RUN apk add --no-cache curl tzdata && \
  curl -sSLo kubectl.tar.gz https://dl.k8s.io/v${KUBECTL_VERSION}/kubernetes-client-linux-amd64.tar.gz && \
  tar xvf kubectl.tar.gz && \
  mv kubernetes/client/bin/kubectl /usr/local/bin/kubectl && \
  rm -rf kubectl.tar.gz kubernetes
