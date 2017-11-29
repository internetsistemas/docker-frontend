FROM node:7.4.0

MAINTAINER [iS] <contato@internetsistemas.com.br>

RUN apt-get update && \
    apt-get install -y xvfb fontconfig openjdk-7-jre-headless chromium rubygems && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    gem install dpl -q

RUN Xvfb :99 -screen 0 1920x1080x24 2>&1 >/dev/null &

ENV DISPLAY :99
