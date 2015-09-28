if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -d ~/.bash_profile.d ]; then
    for file in `find ~/.bash_profile.d -type f`; do
        . $file
    done
fi

alias ll='ls -alF'
alias viprofile='vi ~/.bash_profile'
alias sourceprofile='. ~/.bash_profile'

alias cdgit='cd $HOME/git/$(cd ~; find git -type d -name .git | sed -e "s#^git/\(.*\)/.git#\1#g" | sort | peco)'
alias gitout='git checkout $(git branch | sed -e "s/^*\?\s*//g" | peco)'
alias gitpush='git push origin $(git branch | grep "^*" | sed -e "s/^*\?\s*//g")'
alias gitnew='git checkout -b'
alias gitvi='vi $(git ls-files | peco)'

alias cdsvn='cd $HOME/svn/$(cd ~; find svn -type d -name .svn | sed -e "s#^svn/\(.*\)/.svn#\1#g" | sort | peco)'
