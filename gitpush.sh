#!/bin/bash

git add .
echo 'What is your commit message?'
read commitMessage
git commit -m "$commitMessage"
echo 'Enter name of your branch'
read
git push origin $branch
