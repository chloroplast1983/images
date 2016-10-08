FROM jenkins
COPY rancher-compose /usr/local/bin/rancher-compose
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
USER root
RUN apt-get update -y \
	&& apt-get install -y lxc-docker
RUN gpasswd -a jenkins docker
USER jenkins
