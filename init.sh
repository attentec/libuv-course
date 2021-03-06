#!/bin/bash

WORKDIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [ ! -d $WORKDIR/src ] ; then
  echo "Downloading exercises..."
  git clone https://github.com/thlorenz/learnuv.git $WORKDIR/learnuv
  cd $WORKDIR/learnuv
  git checkout 270d47b446724a4092d79472784693173c161bfd
  cd $WORKDIR
  mv $WORKDIR/learnuv/src $WORKDIR/src
  rm -rf $WORKDIR/learnuv
  echo "Done. Exercises found in $WORKDIR/src"
fi
