FROM alpine:3.8 as builder
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
RUN apk update && apk add npm git make python && npm i npm@latest -g
RUN git clone https://gerrit.wikimedia.org/r/p/mediawiki/services/parsoid \
  && cd parsoid && npm install
CMD [ "node", "/parsoid/bin/server.js" ]
