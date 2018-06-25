FROM haskell:latest
MAINTAINER yufrice <yufyufrice@gmail.com>

RUN cabal update
RUN cabal install yesod-platform yesod-bin
RUN cabal hlint

WORKDIR /