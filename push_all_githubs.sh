#!/bin/bash

for folder in $(ls -d */ | egrep -v "(Urho3D|mycroft|\.Rcheck/)")
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "'parse_beast_log' will be deprecated. Use 'parse_beast_tracelog_file' instead"
    git pull
    git push
  fi

  cd ..
done
