#!/bin/bash

#Set chmod rule 600 to the rsa file
chmod 600 ~/.ssh/id_rsa

#Set git aliasses
## See current branch only
git config --global alias.current 'rev-parse --abbrev-ref HEAD'
## See the actuel status in sb
git config --global alias.st 'status -sb'
## See all the commits in oneline
git config --global alias.ll 'log --oneline'
## Show info about last commit
git config --global alias.last 'log -1 HEAD --stat'

# NPM Globals
## Instal npm depcheck
# npm install -g depcheck
# depcheck