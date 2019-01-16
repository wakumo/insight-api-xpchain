FROM nodesource/jessie:0.10.35

MAINTAINER Long Hoang longhoang@wakumo.vn

RUN apt-get update

RUN mkdir /insight-api-xpchain
WORKDIR /insight-api-xpchain
COPY . /insight-api-xpchain

RUN npm install

ENV INSIGHT_NETWORK livenet
ENV INSIGHT_FORCE_RPC_SYNC 1

# ENV INSIGHT_DB

ENV BITCOIND_USER
ENV BITCOIND_PASS
ENV BITCOIND_HOST
ENV BITCOIND_PORT

CMD ['node', 'insight.js']
