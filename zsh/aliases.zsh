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

# Global ENV
export NODE_ENV="development"
