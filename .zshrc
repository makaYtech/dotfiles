fastfetch

export MOZ_ENABLE_WAYLAND=1
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/maka/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/maka/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/maka/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/maka/.lmstudio/bin"
# End of LM Studio CLI section

