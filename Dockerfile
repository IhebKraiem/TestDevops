FROM debian:jessie

# Copy required files
COPY tomcat_deploy.yml /data/
COPY sample.war /data/
COPY tomcat_test.sh /data/

# Set working directory
WORKDIR /data/
