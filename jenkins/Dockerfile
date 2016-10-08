FROM jenkins
COPY rancher-compose /usr/local/bin/rancher-compose
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
#USER root
#RUN apt-get update && apt-get install -y git --no-install-recommends && rm -r /var/lib/apt/lists/*
#USER jenkins
