#!/bin/bash

for folder in `ls -d */`
do
  cd $folder

  if [ -d ".git" ]
  then
    git pull
  fi

  cd ..
done
