# Path to your oh-my-zsh installation.
# Uncomment this line for Mac OSX
export ZSH=/Users/yka8247/.oh-my-zsh
# Uncomment this line for Ubuntu
#export ZSH=/home/yka8247/.oh-my-zsh

#oh-my-zsh options
ZSH_THEME="clean"
COMPLETION_WAITING_DOTS="true"
DEFAULT_USER="whoami"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)


# Ctrl-Z for vim hide/show
foreground-vi() {
  fg %vi
}

zle -N foreground-vi
bindkey '^Z' foreground-vi

# ignoring insecure directory verification
set ZSH_DISABLE_COMPFIX=true
# use vim key binding
set -o vi

# Setup color scheme for `ls`
LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS

# EXPORTS FOR Intel
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export DPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/bzip2/include"
export PATH="/usr/local/opt/zlib/bin:$PATH"
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"
export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
export VIRTUALENVWRAPPER_VIRTUALENV="/usr/local/bin/virtualenv"

# EXPORTS FOR M1 
#export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/zlib/lib"
#export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/zlib/include"
#export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /opt/homebrew/opt/zlib/lib/pkgconfig"
#export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/bzip2/lib"
#export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/bzip2/include"
#export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /opt/homebrew/opt/bzip2/lib/pkgconfig"
#export PATH="/opt/homebrew/bin:$PATH"
#export PATH="/opt/homebrew/opt/zlib/bin:$PATH"
#export PATH="/opt/homebrew/opt/bzip2/bin:$PATH"
#export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
#export PATH="/opt/homebrew/opt/openssl/bin:$PATH"
#export VIRTUALENVWRAPPER_PYTHON="/opt/homebrew/bin/python3"
#export VIRTUALENVWRAPPER_VIRTUALENV="/opt/homebrew/bin/virtualenv"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# pyenv-virtualenvwrapper
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export WORKON_HOME=$HOME/.virtualenvs


source $ZSH/oh-my-zsh.sh

# run aliases
source ~/.aliases

#run functions
source ~/.functions

# Start screen automatically
# [[ ! $TERM =~ "screen" ]] && tmux


# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /opt/homebrew/bin/virtualenvwrapper.sh ]]; then
    source /opt/homebrew/bin/virtualenvwrapper.sh
elif [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# Defining environment variables for pyenv_root
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
if which pyenv-virtualenv-init > /dev/null; then 
    eval "$(pyenv virtualenv-init -)"; 
fi

