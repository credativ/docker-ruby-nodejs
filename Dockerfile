FROM ruby:2.6

RUN apt-get update && apt-get -y dist-upgrade && apt-get install apt-transport-https

COPY nodejs.sources.list /etc/apt/sources.list.d
COPY nodesource.gpg.key /root
RUN apt-key add /root/nodesource.gpg.key

RUN apt-get update && apt-get -y install nodejs npm && apt-get -y clean
RUN npm install yarn -g
