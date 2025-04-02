# Git add, commit & push
gacp() {
  git add .
  git commit -m $1
  gp
}

# Aliases
alias vi="nvim"

# Global ENV
export NODE_ENV="development"
