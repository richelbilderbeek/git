#!/bin/bash

for folder in ls -d ./*
do
  (
    cd "${folder}" || exit 42

    if [ -d ".git" ]
    then
      git pull
    fi
  )
done
