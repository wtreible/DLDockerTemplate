#!/bin/bash

# Exit script immediately if any command fails
set -e

# Enter Project Name
read -p "Enter Project Name: " PROJECT_NAME

# Remove the .git dir and init a new repo
rm -rf .git && git init

# Edit the docker-compose file with the project name
sed "s/template-name/${PROJECT_NAME}/g" docker/docker-compose.yml.template > docker-compose.yml
rm docker/docker-compose.yml.template

# Delete myself if everything worked
echo "Done!"
rm -- "$0"
