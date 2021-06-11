#!/bin/bash

#Access rights: 
#   Set chmod rule 600 to the rsa file
chmod 600 ~/.ssh/id_rsa

#Bash aliases: 
#   Helper for committing work to GitHub.
#   The file it self is hosted on Github so we dont have to make changes inside every project
#   as soon there will be a change inside the script its self.
LINE="alias commit='bash < (curl -s https://raw.githubusercontent.com/boydzweers/git-helper/main/helper.sh)'"
FILE="../../.bashrc"
grep -q "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
. ~/.bashrc

#Git Aliases
#   See current branch only
git config --global alias.current 'rev-parse --abbrev-ref HEAD'
#   Add changed files to prev commit
git config --global alias.caa 'commit -a --amend -C HEAD'
#   See the actuel status in sb
git config --global alias.st 'status -sb'
#   See all the commits in oneline
git config --global alias.ll 'log --oneline'
#   Show info about last commit
git config --global alias.last 'log -1 HEAD --stat'
