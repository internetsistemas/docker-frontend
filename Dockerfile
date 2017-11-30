FROM node:7.4.0

MAINTAINER [iS] <contato@internetsistemas.com.br>

RUN \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

RUN \
  apt-get update && \
  apt-get install -y xvfb google-chrome-stable rubygems && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  gem install dpl -q

RUN \
  Xvfb :99 -screen 0 1920x1080x24 2>&1 >/dev/null &

ENV DISPLAY :99
