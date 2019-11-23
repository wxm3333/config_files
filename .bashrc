
alias h='history 50'                 # classify files in colour
alias ls='ls -F'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -lh'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias so='source ~/.bashrc'
alias edwin='mit-scheme --edit --heap 100000'
alias scheme='~/Documents/MIT-Scheme.app/Contents/Resources/mit-scheme'
alias aws_lsm='ssh -i /Users/xwang/Dropbox/MEng/6.THM/IssueNetworks.pem ubuntu@34.206.241.237'
alias aws_notebook='ssh -i /Users/xwang/Dropbox/MEng/6.THM/IssueNetworks.pem -L 8000:localhost:8888 ubuntu@34.206.241.237'
alias gpu_notebook='ssh -i ~/.ssh/gitmit -L 8000:localhost:8888 xiaomin@18.27.79.59'
alias gpu_lsm='ssh -i ~/.ssh/gitmit xiaomin@18.27.79.59'
alias shanon='autossh -M 0 shanon -t tmux a'
alias doraemon='autossh -M 0 doraemon -t tmux a'
export PS1="\[\e[36m\] \w \[\e[0m\]\$ "
export PS1="\w$ "

export PYTHONPATH=~/Dropbox/MEng/6.THM/pathways:~/Dropbox/MEng/6.THM/upskill

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
