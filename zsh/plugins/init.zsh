source $HOME/.zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitfast", from:oh-my-zsh
zplug "plugins/git-prompt", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
