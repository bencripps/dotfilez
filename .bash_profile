#!/bin/bash

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

proj() {
	cd ~/Documents/Dev/jss/$1
}

changelog(){
	github_changelog_generator --token $CHANGELOG_GITHUB_TOKEN
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "