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

#This checks to see if these files exist before it trys to copy them.
files=(~/.vimrc ~/.tmux.conf)

for i in "${files[@]}"
do
	if [ -f "$i" ]; then
		cp "$i" .
	fi
done

# Add Hostname onto commit message
message="$message --${HOSTNAME} "

# After copying the files, we will want to add them to git, and commit them. 
git pull
git add .
git commit -m "$message"
git push

# After updating git, update local.
# This should also be an array to copy them back.  <----
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

# It would be neat if Here it would update a log file. 
FILE=.updateLog.log

# If the log file doesnt exist, create it. 
if [ ! -f "$FILE" ]; then
	echo "Created Update Log"
	touch updateLog.log
fi
CURRENTDATE=`date +"%Y-%m-%d %T"`

echo "UPDATED: " ${CURRENTDATE} ${message} >> "$FILE"

