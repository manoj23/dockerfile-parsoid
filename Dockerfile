FROM alpine:3.8 as builder
LABEL maintainer="Georges Savoundararadj <savoundg@gmail.com>"
ARG GIT_REVISION
RUN apk update && apk add npm git make python && npm i npm@latest -g
RUN git clone https://gerrit.wikimedia.org/r/p/mediawiki/services/parsoid \
  && cd parsoid \
  && if [ -n ${GIT_REVISION} ]; then \
    git checkout $GIT_REVISION; \
  fi \
  && npm install
CMD [ "node", "/parsoid/bin/server.js" ]
