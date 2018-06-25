FROM haskell:latest
MAINTAINER yufrice <yufyufrice@gmail.com>

RUN cabal update
RUN cabal install happy
RUN cabal install yesod yesod-bin --max-backjumps=-1 --reorder-goals -j
RUN cabal install hlint --max-backjumps=-1 --reorder-goals -j

WORKDIR /