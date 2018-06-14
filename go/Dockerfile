FROM golang:1-stretch

RUN echo "deb http://http.debian.net/debian jessie-backports main" | \
      tee --append /etc/apt/sources.list.d/jessie-backports.list > /dev/null ;\
      apt-get update

RUN apt-get install -y openjdk-8-jdk git unzip maven

RUN update-java-alternatives -s java-1.8.0-openjdk-amd64

