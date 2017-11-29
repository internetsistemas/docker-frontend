FROM node:7.4.0

MAINTAINER [iS] <contato@internetsistemas.com.br>

#USER root

RUN apt-get update && \
    apt-get install -y xvfb fontconfig openjdk-7-jre-headless chromium rubygems && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install dpl -q

# RUN mkdir /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix
# ADD xvfb.sh /bin/start_xvfb
# RUN chmod +x /bin/start_xvfb

# USER cirunner
ENV DISPLAY :99
