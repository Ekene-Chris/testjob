#!/bin/bash
git clone ssh://git@bitbucket.ce.wolterskluwer.io:7999/bot/auth_jar.git
cd auth_jar
git branch -a | cut -f3 -d/

readarray -t branch_array <<< "$(git branch -a | cut -f3 -d/)"
echo "${branch_array[@]}"

for (( i=0; i<${#branch_array[@]}; i++ )); do git push --delete origin ${branch_array[i]}; done
