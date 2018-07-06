#!/bin/bash

for folder in `ls -d */`
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "EOD"
    git pull
    git push
  fi

  cd ..
done
