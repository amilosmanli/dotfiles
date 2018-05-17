alias vi=nvim
alias vim=nvim
#alias vimzf="vim $(fzf)"
export ZSH=/Users/aosmanli/.oh-my-zsh
ZSH_THEME="lambda-mod"

export LC_ALL=en_US.utf-8
export NVM_LAZY_LOAD=true
export LANG=en_US.utf-8
DISABLE_UPDATE_PROMPT=true

# ZSH Syntax highlighting settings
# if (( ZSHRC_LOAD_ONCE++ == 0 )); then
#   source "/Users/aosmanli/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
#   source "/Users/aosmanli/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# fi

plugins=(git zsh-completions autojump zsh-nvm zsh-autosuggestions zsh-syntax-highlighting) 

autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

#autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/aosmanli/software/platform-tools:$PATH"

# VirtualenvWrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace/personal
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Java Home
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"

alias docker-start="docker-machine restart default"
alias tok="zign token | tee /dev/stderr | pbcopy"

#eval $(thefuck --alias)

export EDITOR=nvim
export GIT_EDITOR=nvim

alias showHidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias kafka-consumer='~/software/kafka10/bin/kafka-console-consumer.sh'

[[ -s "/Users/aosmanli/.gvm/scripts/gvm" ]] && source "/Users/aosmanli/.gvm/scripts/gvm"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

export DOCKER_IP=localhost
eval "$(_SENZA_COMPLETE=source senza)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
