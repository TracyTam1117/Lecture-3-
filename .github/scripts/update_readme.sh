#!/bin/bash

FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date)

echo -e "\n[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]" >> /app/README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

git -C /app add README.md
git -C /app commit -m "Update README with vowel frequency results"
git -C /app push
