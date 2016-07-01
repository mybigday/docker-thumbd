# VERSION 1.0
# AUTHOR:         Jhen <developer@jhen.me>
# DESCRIPTION:    Thumbd image based on mhart/alpine-node
# TO_BUILD:       docker build --rm -t mybigday/thumbd .
# SOURCE:         https://github.com/mybigday/docker-thumbd
FROM mhart/alpine-node:6
MAINTAINER Jhen <developer@jhen.me>

ADD start /start

# Install imagemagick & pm2 & thumbd
RUN apk update && \
    apk add imagemagick && \
    rm -rf /var/cache/apk/* && \
    npm set registry https://registry.npmjs.org && \
    npm install -g pm2 thumbd@2.19.0 && \
    npm cache clear && \
    chmod 755 /start

CMD ["sh", "/start"]
