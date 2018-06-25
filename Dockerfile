FROM haskell:latest
MAINTAINER yufrice <yufyufrice@gmail.com>

ADD stack.yaml ~/stack.yaml
RUN stack setup
RUN stack build yesod yesod-bin
RUN stack build hlint

WORKDIR /