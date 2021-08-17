#!/bin/bash

for folder in $(ls -d */ | egrep -v "(Urho3D|mycroft|\.Rcheck/)")
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "use 'r-lib/covr' (instead of 'jimhester/covr')"
    git pull
    git push
  fi

  cd ..
done
