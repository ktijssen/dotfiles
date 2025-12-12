### ALIASES ###

alias k="kubectl"
alias kx="kubectl ctx"
alias kx-="kubectl config unset current-context"

# Git Folders
alias github="cd ~/git/github.com"
alias gitlab="cd ~/git/gitlab-deploy.kevintijssen.eu"
alias gitazure="cd ~/git/dev.azure.com"
alias gitfq="cd ~/git/git.fullstaq.com"

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Random String
alias randomstring="tr -dc A-Za-z0-9 </dev/urandom | head -c 24; echo"

# Eza
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"

# VSCode
#alias code="open -a 'Visual Studio Code'"

alias yubi="sudo systemctl restart pcscd"

## use bat instead of cat
if command -v bat > /dev/null ; then
  alias cat="bat"
fi

if command -v carapace > /dev/null; then
  export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
  zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
  source <(carapace _carapace)
fi

if command -v talosctl > /dev/null; then
  source <(talosctl completion zsh)
fi

if command -v omnictl > /dev/null; then
  source <(omnictl completion zsh)
fi
