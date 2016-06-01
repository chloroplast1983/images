FROM jenkins
USER root
RUN apt-get update && apt-get install -y software-properties-common && apt-add-repository ppa:ansible/ansible && apt-get install -y ansible git --no-install-recommends && rm -r /var/lib/apt/lists/*
USER jenkins
