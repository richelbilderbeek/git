#!/bin/bash

for folder in $(ls -d */ | egrep -v "(Urho3D|mycroft|\.Rcheck/)")
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "No need to update R packages for now"
    git pull
    git push
  fi

  cd ..
done
