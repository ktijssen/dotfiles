### ALIASES ###

alias k="kubectl"

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
alias code="open -a 'Visual Studio Code'"
