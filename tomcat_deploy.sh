# tomcat_deploy.sh
#!/bin/bash

# Build Docker image
docker build -t tomcat-ansible-test .

# Run Docker container with privileged option
docker run --privileged=true -v "$(pwd)/deploy:/data" tomcat-ansible-test /data/tomcat_test.sh $1
