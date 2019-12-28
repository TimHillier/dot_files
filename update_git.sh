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
#this could possibly be an array...
cp ~/.vimrc .
cp ~/.tmux.conf . 

# After copying the files, we will want to add them to git, and commit them. 
git pull
git add .
git commit -m "$message"
git push

# After updating git, update local
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

