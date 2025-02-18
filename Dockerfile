FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
EXPOSE 8080 50000
CMD ["jenkins"]
