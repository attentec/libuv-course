FROM ubuntu:16.04

WORKDIR /home

RUN apt-get update && \
  apt-get install -y git-core curl gnupg gcc g++ make && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -y nodejs && \
  git clone https://github.com/thlorenz/learnuv.git && \
  cd learnuv && \
  git checkout 270d47b446724a4092d79472784693173c161bfd && \
  npm install && \
  python scripts/install-dependencies.py

WORKDIR /home/learnuv