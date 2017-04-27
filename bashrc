set -o vi
export PATH=$PATH:/Applications/MAMP/Library/bin

# displays git branch in command prompt
source ~/.git-prompt.sh


alias x=exit
alias grep_code="/Users/eto/Perl_Scripts/bin/grep_code"
alias branch="git branch"
alias tmux='tmux -2' # for 256 colors to make colorscheme work in vim
alias mysql="/Applications/MAMP/Library/bin/mysql -uroot -proot"


# python virtual environments
alias activate="source $HOME/Dojo/Virtual/venv3/bin/activate" # for flask
alias pylot="source $HOME/Dojo/Virtual/Pylot/pylotVenv/bin/activate" # for pylot
alias django="source $HOME/Git/dojo/django/djangoEnv/bin/activate; cd $HOME/Git/dojo/django"
alias migraine="source $HOME/Git/migraine/MigraineAlertTemplate/migraineEnv/bin/activate; cd $HOME/Git/migraine/MigraineAlertTemplate; export PYTHONPATH=$HOME/Git/migraine/MigraineAlertTemplate/src"
alias hangman="source $HOME/Git/games/djangoEnv/bin/activate; cd $HOME/Git/games"

# browser-sync
alias bs="browser-sync start --server --files '*.html, js/*.js, build/*.js, css/*.css'"

# require virtual environment for installs
export PIP_REQUIRE_VIRTUALENV=true 
# use gpip install to install packages globally
gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

function sshh() { ssh "ubuntu@$*.something.com"; }
function ssha() { ssh -i ~/.ssh/somefile.pem "ubuntu@xx.xx.xx.xx"; }

# command prompt
#PS1="[\d \t \u ] $ "
#PS1="[\d \t \u\$(__git_ps1)]$ "
#PS1='[\h \w $(__git_ps1 "\[\e[1;32m\]%s\[\e[0m\]") \t]\\$ '
PS1='[\u \w $(__git_ps1 "\[\e[1;32m\]%s\[\e[0m\]") \t]\\$ '

# system .bashrc - /etc/bashrc

# add color to ls. colors are listed in foreground/background pairs. `man ls`
export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad # default
export LSCOLORS=cxFxBxDxgxegedabagacad
alias ls='ls -GFh'
alias ll='ls -al'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

