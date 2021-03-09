FROM jenkins/jenkins:latest
USER 0
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y rsync 