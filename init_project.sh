#!/bin/bash

read -p "Enter project name: " project_name
read -p "Enter project description: " project_description
read -p "Enter project author name: " project_author_name
read -p "Enter project author email: " project_author_email


sed -i "s~PROJECT_NAME~$project_name~g" Makefile setup.cfg pyproject.toml
sed -i "s~PROJECT_AUTHOR_NAME~$project_author_name~g" pyproject.toml
sed -i "s~PROJECT_AUTHOR_EMAIL~$project_author_email~g" pyproject.toml
sed -i "s~PROJECT_DESCRIPTION~$project_description~g" pyproject.toml

rm init_project.sh
rm -rf .git

