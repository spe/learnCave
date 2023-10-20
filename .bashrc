# .bashrc
function parse_git_branch {
ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
echo "("${ref#refs/heads/}")"
}

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
fi
if [ -f /etc/bash_completion.d/git-prompt ]; then
    . /etc/bash_completion.d/git-prompt
fi

export GIT_PS1_SHOWDIRTYSTATE=1
#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
local BLACK="\[\033[0;30m\]"
local BLACKBOLD="\[\033[1;30m\]"
local RED="\[\033[0;31m\]"
local REDBOLD="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local GREENBOLD="\[\033[1;32m\]"
local YELLOW="\[\033[0;33m\]"
local YELLOWBOLD="\[\033[1;33m\]"
local BLUE="\[\033[0;34m\]"
local BLUEBOLD="\[\033[1;34m\]"
local PURPLE="\[\033[0;35m\]"
local PURPLEBOLD="\[\033[1;35m\]"
local CYAN="\[\033[0;36m\]"
local CYANBOLD="\[\033[1;36m\]"
local WHITE="\[\033[0;37m\]"
local WHITEBOLD="\[\033[1;37m\]"
#export PS1="\n$BLACKBOLD[\t]$GREENBOLD \u@\h\[\033[00m\]:$BLUEBOLD\w\[\033[00m\] \\$ "
#export PS1="$WHITE\u $RED\$(date +%m/%d-%H:%M) $PURPLEBOLD\w $CYANBOLD\\n\W $YELLOW\$(parse_git_branch)$WHITE\$ "
#export PS1="$BLUE[$WHITE\u$BLUE] $CYAN$(date +%m/%d-%H:%M) $RED\w $CYANBOLD\\n\W $YELLOW$(parse_git_branch)$WHITE\$ "
#export PS1="$BLUE[$WHITE\u$BLUE] $CYAN\$(date +%m/%d-%H:%M) $RED\w $CYANBOLD\\n\W $YELLOW$(__git_ps1 " (%s)")$WHITE\$ "
#export PS1='$BLUE[$WHITE\u$BLUE] $CYAN$(date +%m/%d-%H:%M) $RED\w $CYANBOLD\n\W $YELLOW$(__git_ps1 )$WHITE\$ '
}
#prompt
#export PS1='\[\033[0;34m\][\[\033[0;37m\]\u\[\033[1;33m\]@\[\033[1;31m\]R540\[\033[0;34m\]] \[\033[0;36m\]$(date +%m/%d-%H:%M) \[\033[0;31m\]\w \[\033[1;36m\]\n\W \[\033[0;33m\]$(__git_ps1 "(%s)")\[\033[0;37m\]\$ '
export PS1='\[\033[0;34m\][\[\033[0;37m\]\u\[\033[1;33m\]@\[\033[1;31m\]R540\[\033[0;34m\]] \[\033[0;36m\]$(date +%m/%d-%H:%M) \[\033[0;31m\]\w \[\033[1;36m\]\n\W \[\033[0;33m\]$(__git_ps1 "(%s)")\[\033[0;37m\]\$ '
#NAME_USER=`parse_user`
#export PS1='\[\033[0;34m\][\[\033[0;37m\]$NAME_USER\[\033[0;34m\]] \[\033[0;36m\]$(date +%m/%d-%H:%M) \[\033[0;31m\]\w \[\033[1;36m\]\n\W \[\033[0;33m\]$(__git_ps1 "(%s)")\[\033[0;37m\]\$ '

#RED="\[\033[0;31m\]"
#YELLOW="\[\033[0;33m\]"
#GREEN="\[\033[0;32m\]"
#GREY="\[\033[1;30m\]"


#PS1="$GREEN\u $RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$GREEN\$ "
#PS1="$RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch)$GREEN\$ "
#PS1="$RED\$(date +%H:%M) \W$YELLOW \$(parse_git_branch)$GREEN\$ "
#PS1="$RED\$(date +%H:%M) $GREEN\w $DEFAU\\n(\$SHLVL:\\!)\\\$(parse_git_branch)$GREEN\$ "
#PS1="$GREY\u $RED\$(date +%m/%d-%H:%M) $GREEN\w $GREY\\n\W $YELLOW\$(parse_git_branch)$GREEN\$ "

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export TERM="xterm-256color"
#alias tmux="tmux -2"
# User specific aliases and functions
#alias MMM='cd $HOME/devArea/BSP/mongoose/Mngse_PRJ/working_build'
#alias GGG4='cd $HOME/devArea/BSP/dell/14g'
#alias GGG3='cd $HOME/devArea/BSP/dell/13g'
#alias GGG1='cd $HOME/devArea/BSP/dell/11g'
#alias EEE='cd apps/ipmi/core && vim cdf/prdd/PMBus.c'
#alias PPP='vim cdf/prdd/PMBus.c'
alias TAGS='ctags -R --exclude=.git --exclude=.pc . && cscope -Rbkq'
#alias TAGS='ctags -R --exclude=.git --exclude=.pc . && git ls-files | grep '\.c$\|\.h$' > cscope.files && cscope -Rbkq -i cscope.files'
alias UTAGS='rm cscope* tags'
alias ls='ls --color'
alias ll='ls -la --color'
#alias TTT='tmux attach -t 14g'
#alias TTTT='tmux attach -t '
#alias TTTN='tmux new -t i2c_drv'
#alias TTTN='tmux new -s i2c_drv'
#alias TTT1='tmux attach'
#alias grep='grep --color --exclude=cscope* --exclude=tags --exclude=*.bin --exclude=linux-yocto --exclude-dir=linux-* --exclude-dir=u-boot* --exclude-dir=selinux*'
alias grep='grep --color --exclude=cscope* --exclude=tags --exclude=*.bin --exclude=linux-yocto --exclude-dir=selinux*'
#alias repo_init='repo init --repo-url=https://gerrit.googlesource.com/git-repo -u https://hsv-svn-dell-mirror.int.vertivco.com/git/dellsrc/manifest'
#alias repo_sync='~/bin/repo sync --no-clone-bundle'

alias BBB='bitbake obmc-phosphor-image'
alias EVBS='ssh spencer@10.162.245.162'
alias ARCHERCITY='ssh spencer@10.162.243.207'
alias FXN='ssh spencer@10.162.243.24'
alias 2U6N='ssh spencer@10.162.243.31'

#alias RMPS='ps aux | grep -i spencer | grep -i bitbake-server | awk '{print $2}' | xargs kill -9'

#=====================================

export VIMRUNTIME=$HOME/bin.vim/share/vim/vim82
#PATH=/usr/sbin:$PATH
#PATH=$HOME/bin/bin:$PATH:/usr/sbin
#PATH=$HOME/bin.vim/bin:$HOME/bin/bin:$HOME/bin/arm-gnu-toolchain-11.3.rel1-x86_64/bin:$PATH
#PATH=$HOME/bin.vim/bin:$HOME/bin/bin:$HOME/bin/arm-gnu-toolchain-12.2.rel1-x86_64-aarch64-none-elf/bin:$PATH
PATH=$HOME/bin.vim/bin:$HOME/bin/bin:$HOME/bin/toolchains/aarch32/bin:$HOME/bin/toolchains/aarch64/bin:$PATH

export SVN_EDITOR=vim

export LANG=en_US.UTF-8
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv virtualenv-init -)"
#eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#if command -v pyenv 1>/dev/null 2>&1; then
# eval "$(pyenv init -)"
#fi
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv virtualenv-init -)"
