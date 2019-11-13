FROM ubuntu:latest

RUN mkdir /opt/ansible
WORKDIR /opt/ansible

RUN apt-get update && apt-get install -y  \
    ansible \
    && apt-get clean

CMD ["ansible-playbook", "--version"]
