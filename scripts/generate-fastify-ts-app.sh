#!/bin/bash
repoUrl=git@github.com:AlliumLabs/docker-fastify-typescript-boilerplate.git

read -p "Enter project name [docker-fastify-typescript-boilerplate]: "  project_name
if [ "$project_name" == "" ];  then
    project_name="docker-fastify-typescript-boilerplate"
fi
echo -e "Generating project $project_name\n\n"

git clone $repoUrl $project_name
cd $project_name
rm -rf .git
git init
echo -e "\n\nGenerated TypeScript Fastify server at $project_name"
echo -e "Installing dependencies \n\n"
npm i
