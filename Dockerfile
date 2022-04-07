# Container image that runs your code
FROM ubuntu:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY bin/tool-versions-to-env /tool-versions-to-env

# Code file to execute when the docker container starts up
ENTRYPOINT ["/tool-versions-to-env"]
