#!/bin/sh -l
# entrypoint.sh needs permissions to be executable (chmod +x)


# $1 is the input parameter of the action.yml file input -> who-to-greet
echo "Hello $1"
time=$(date)
# Here we set the output declare on the action.yml file under output as time. output -> time
# workflow command -> time | echo "::set-output name={name}::{value}" its deprecated
echo "OUTPUT_TIME=$time" >> $GITHUB_OUTPUT