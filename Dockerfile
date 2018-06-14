# FROM centos:7

# # Getting latest git
# RUN yum install -y http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm

# RUN yum -y install epel-release git

# RUN yum -y install maven unzip java-1.8.0-openjdk

FROM debian:jessie

RUN echo "deb http://http.debian.net/debian jessie-backports main" | \
      tee --append /etc/apt/sources.list.d/jessie-backports.list > /dev/null ;\
      apt-get update

RUN apt-get install -y -t jessie-backports openjdk-8-jdk git unzip maven zip

RUN update-java-alternatives -s java-1.8.0-openjdk-amd64
