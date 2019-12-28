#!/bin/bash


#check to see if there was a commit message. 
message="Updated Dot Files."

if [ $# -ne 0 ]
then
	if [ "$1" != "" ]
	then
		message="'$*'"
	fi
fi


#the frist thing that I would want to do is copy the files here. 
#This should also check to see if these files exist before they try to copy them.
files=(~/.vimrc ~/.tmux.conf)

for i in "${files[@]}"
do
	if [ -f "$i" ]; then
		cp "$i" .
	fi
done

# After copying the files, we will want to add them to git, and commit them. 
git pull
git add .
git commit -m "$message"
git push

# After updating git, update local
#this should also be an array to copy them back. 
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

