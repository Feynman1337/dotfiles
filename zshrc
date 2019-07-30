# Path to your oh-my-zsh installation.
export ZSH=/home/arnau/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode web-search)

ZSH_THEME="wedisagree"
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
	    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

export PATH="/home/arnau/.bin:$PATH"
eval $(thefuck --alias)
export EDITOR="vim"

### aliases ##
alias vi="vim"
#alias vim="nvim"
alias l="ls -lh"
alias cosma6="ssh dc-quer1@login6.cosma.dur.ac.uk -X"
alias cosma="ssh dc-quer1@login7a.cosma.dur.ac.uk"
alias cosma5="ssh -l dc-quer1 login.cosma.dur.ac.uk"
alias jupycosma="ssh dc-quer1@login7a.cosma.dur.ac.uk -L 8892:127.0.0.1:8892 -N"
alias py="source activate py"
alias astro="conda activate astro"
alias doodle="docker run -v $(pwd)/samples:/nd/samples -v $(pwd)/frames:/nd/frames -it alexjc/neural-doodle"
alias dualmonitor='xrandr --auto --output HDMI2 --mode 1920x1080 --rate 75 --left-of eDP1'
alias singlemonitor='xrandr --auto --output HDMI2 --off'
alias screenonly='xrandr --auto --output eDP1 --off'
alias cloudy='/home/arnau/cloudy/source/cloudy.exe'
#alias tmux="TERM=screen-256color-bce tmux"

#export TERM="xterm-256color"
#######################################################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /home/arnau/dotfiles/z.sh
# export PATH="/home/arnau/miniconda3/bin:$PATH"  # commented out by conda initialize
unset BROWSER
export HEADAS=/home/arnau/heasoft-6.25/x86_64-pc-linux-gnu-libc2.28
alias heainit=". $HEADAS/headas-init.sh"
export CLOUDY_DATA_PATH="/home/arnau/cloudy/data" 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/arnau/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/arnau/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/arnau/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/arnau/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

