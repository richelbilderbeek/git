#!/bin/bash

for folder in $(ls -d */ | egrep -v "(Urho3D|mycroft|\.Rcheck/)")
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "Moved PhD thesis to github.com/richelbilderbeek/phd_thesis (from github.com/richelbilderbeek/thesis)"
    git pull
    git push
  fi

  cd ..
done
