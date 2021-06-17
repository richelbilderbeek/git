#!/bin/bash

for folder in $(ls -d */ | egrep -v "(Urho3D|mycroft|\.Rcheck/)")
do

  cd $folder

  if [ -d ".git" ]
  then
    echo "git folder: "$folder
    git add --all :/
    git commit -m "Cannot do 'ggplot2::ggplot(...) + ggplot2::ggsave(...)', do 'ggplot2::ggplot(...); ggplot2::ggsave(...)' instead, see https://github.com/tidyverse/ggplot2/issues/4517"
    git pull
    git push
  fi

  cd ..
done
