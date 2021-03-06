source $HOME/.zplug/init.zsh

zplug "kiurchv/asdf.plugin.zsh", defer:2
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-prompt", from:oh-my-zsh
zplug "zdharma/fast-syntax-highlighting"
zplug "zlsun/solarized-man"
zplug "zsh-users/zaw"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
