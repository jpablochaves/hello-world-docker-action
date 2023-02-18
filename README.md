# hello-world-docker-action
To create a container action that runs inside a Docker container

## action.yml
Defines the action along with its input and ouput parameters
input:
 who-to-greet
 
 outputs:
  time
  
- who-to-greet is sent as $1 or a parameter in the entrypoint.sh of the container
- time is the output or the workflow command used for the output

## Dockerfile
Container image that runs our code
Copies the entrypoint.sh script under / path in the container
when the container gets executed it will run entrypoint.sh

## entrypoint.sh
needs executable permissions (+x)
Echoes the $1 parameter (from the action yaml file -> who-to-greet)
Echoes the time of the greeting and defines the workflow command and output time
