FROM jenkins
COPY rancher-compose /usr/local/bin/rancher-compose
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
USER root
RUN apt-get update \
&& echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list \
&& apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
&& apt-get install -y sudo apt-transport-https ca-certificates --no-install-recommends \
&& rm -r /var/lib/apt/lists/* \
&& gpasswd -a jenkins docker
USER jenkins
