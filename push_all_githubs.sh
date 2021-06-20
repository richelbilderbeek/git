#!/bin/bash

for folder in $(ls -d */ | egrep -v "(Urho3D|mycroft|\.Rcheck/)")
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "Use 'https://travis-ci.com' (instead of obsolete 'https://travis-ci.org')"
    git pull
    git push
  fi

  cd ..
done
