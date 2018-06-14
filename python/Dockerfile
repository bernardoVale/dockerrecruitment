FROM python:3.6-jessie

RUN echo "deb http://http.debian.net/debian jessie-backports main" | \
      tee --append /etc/apt/sources.list.d/jessie-backports.list > /dev/null ;\
      apt-get update

RUN apt-get install -y -t jessie-backports openjdk-8-jdk git unzip maven zip

RUN update-java-alternatives -s java-1.8.0-openjdk-amd64
