FROM haskell:latest
MAINTAINER yufrice <yufyufrice@gmail.com>

ADD stack.yaml /root/.stack/global-project/config.yaml

RUN stack upgrade
RUN stack setup
RUN stack build yesod yesod-bin
RUN stack build hlint

WORKDIR /