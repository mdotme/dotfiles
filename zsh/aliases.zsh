# Git add, commit & push: $ gacp "Some commit"
gacp() {
  git add .
  git commit -m $1
  gp
}

# Aliases
alias vi="nvim"
alias pd="pnpm dev"
alias yd="yarn dev"
# Python
alias python="python3"
alias py="python"
alias pip="pip3"
# Dotnet
alias dn="dotnet"
alias dnr="dotnet run"
# Docker
alias dcup="docker compose up -d"
alias dcd="docker compose down"
alias dvolrm='docker volume rm $(docker volume ls -q)'
alias dsysprune='docker system prune -a --volumes' # full cleanup (images, containers, volumes, networks)
alias dce='docker-compose exec'
# Fun
alias please='sudo $(fc -ln -1)'
alias shrug='echo ¯\\\_(ツ)_/¯'

# Global ENV
export NODE_ENV="development"
