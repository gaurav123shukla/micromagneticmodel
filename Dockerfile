FROM ubuntu:16.04

MAINTAINER Marijan Beg <m.beg@soton.ac.uk>

RUN apt-get update -y && \
    apt-get install -y git python3-pip curl && \
    python3 -m pip install --upgrade pip pytest-cov codecov \
      git+git://github.com/computationalmodelling/nbval.git nbformat \
      git+git://github.com/joommf/discretisedfield.git

WORKDIR /usr/local/

RUN git clone https://github.com/joommf/micromagneticmodel.git