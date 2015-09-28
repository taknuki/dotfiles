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
