FROM jenkins
USER root
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
RUN apt-get update && apt-get install -y git --no-install-recommends && rm -r /var/lib/apt/lists/*
USER jenkins
