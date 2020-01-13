# Idea
The idea behind this is that the script will copy my dot files
(.vimrc, .tmux, etc...) and upload them to github. This will allow easier setup and synch across multiple machins. This will also allow me to have an easy way to update all my dot files. 



# Use
Clone, then run the script. It will take care of getting and placing the dot files for you. 
Run with ```./update_git.sh [commit message]``` If you want to add a custom commit message you can, otherwise it defaults to "Updated Dot Files". 

# What I want it do be able to do
- [x] Check for changes.
- [x] Copy dot files to folder.
- [x] Push that folder to github.
- [x] Pull folder and move dot files to their location. 
- [ ] Easily add files to be pushed. 
- [x] Ability to add commit messages. 
- [ ] Ability to store and place more configuration files. 
- [ ] Some Kind of Logging

# Needed Improvments
1. Put files into their location better, right now its just 2 cp commands, it should really be a loop. 
2. Some kind of logging would be nice. Might want to keep those local though. That way you can see whats updated on each machine? 
