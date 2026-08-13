### ALIASES ###

alias k="kubectl"
alias kx="SHELL= kubectl ctx"
alias kx-="kubectl config unset current-context"

# Git Folders
alias github="cd ~/git/github.com"
alias gitlab="cd ~/git/gitlab-deploy.kevintijssen.eu"
alias gitazure="cd ~/git/dev.azure.com"
alias git-commit="task --dir ~/.task commit"

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Random String
alias randomstring="tr -dc A-Za-z0-9 </dev/urandom | head -c 24; echo"

# Open Files
alias file="xdg-open"

# TempDir
alias tmp="cd $(mktemp -d)"

# Taskfile Install
alias upgrade="task --dir ~/.task"

# Dell VPN
alias dell-vpn-up="sudo -E gpclient connect ausvpn.connect.dellcsc.com --csd-wrapper /nix/store/wxc4gqykwy09drvx13fxvlslp6wwb8mr-gpclient-2.5.1/libexec/gpclient/hipreport.sh --browser remote"

# Eza
if command -v eza > /dev/null ; then
  alias ls="eza --icons --group-directories-first"
  alias ll="eza --icons --group-directories-first -l"
fi

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

if command -v airlock > /dev/null; then
  source <(airlock completion zsh)
fi

if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi

