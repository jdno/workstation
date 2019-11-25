FROM ubuntu:latest

RUN mkdir /opt/ansible
WORKDIR /opt/ansible

RUN apt-get update && apt-get install -y  \
    ansible \
    ansible-lint \
    && apt-get clean

CMD ["ansible-playbook", "--version"]
