ZSH=/usr/share/oh-my-zsh/
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
ZSH_THEME="ys"
DISABLE_AUTO_UPDATE="true"
plugins=(git autojump extract zsh-syntax-highlighting colored-man-pages)

zstyle ':completion:*' rehash true

if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
source /etc/profile
source /home/zhou/.bash_alias
source /home/zhou/.bash_profile 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
