# Container image that runs our code
FROM alpine:3.10

# Copies the code file from your action repository to the filesystem path / of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up ('entrypoint.sh')
ENTRYPOINT ["/entrypoint.sh"]

# If the container gets executed it will run entrypoint.sh