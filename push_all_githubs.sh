#!/bin/bash

for folder in $(ls -d */ | egrep -v "(Urho3D|mycroft|\.Rcheck/)")
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "Use a semicolon instead of a plus before ggplot2::ggsave, as the plus now gives a rightful error"
    git pull
    git push
  fi

  cd ..
done
