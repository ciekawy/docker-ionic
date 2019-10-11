FROM node:11-alpine

ENV IONIC_VERSION=5.2.3 \
    CORDOVA_VERSION=8.1.2

RUN apk add --no-cache curl git openssh-client make gcc g++ python ncurses \
    && npm install -g cordova@"$CORDOVA_VERSION" ionic@"$IONIC_VERSION" \
    && addgroup -S ionic && adduser -S ionic -G ionic

