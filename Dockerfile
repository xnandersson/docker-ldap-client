FROM ubuntu:latest
MAINTAINER Niklas Andersson <niklas.andersson@openforce.se>
ENV UPDATED_AT 2019-04-09
RUN apt-get update -yqq
RUN apt-get install nmap iputils-ping sudo-ldap vim git -yqq
COPY ldap.conf /etc/ldap/ldap.conf
CMD /bin/bash
