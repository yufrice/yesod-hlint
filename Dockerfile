FROM haskell:latest
MAINTAINER yufrice <yufyufrice@gmail.com>

ENV STACK_ROOT=/stack-root
COPY stack.yaml /root/.stack/global-project/stack.yaml

RUN stack config set system-ghc --global true
RUN stack upgrade
RUN stack setup
RUN stack build yesod yesod-core yesod-bin
RUN stack build hlint

WORKDIR /