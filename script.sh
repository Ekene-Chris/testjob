#!/bin/bash
git clone git@bitbucket.org:kainosraiments-admin/mslearn-tailspin-spacegame-web.git
cd mslearn-tailspin-spacegame-web
git branch -a | cut -f3- -d/

readarray -t branch_array <<< "$(git branch -a | cut -f3- -d/)"
echo "${branch_array[@]}"

for (( i=0; i<${#branch_array[@]}; i++ )); do git push --delete origin ${branch_array[i]}; done
