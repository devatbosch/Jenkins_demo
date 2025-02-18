FROM jenkins/jenkins:lts

# Switch to root user to install dependencies
USER root

# Install required dependencies
RUN apt-get update && apt-get install -y openssh-server sudo

# Create necessary directories
RUN mkdir -p /var/run/sshd

# Set Jenkins home and work directory
ENV JENKINS_HOME /var/jenkins_home

# Expose ports
EXPOSE 8080 50000

# Start Jenkins
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]

