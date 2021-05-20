# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/mac/.oh-my-zsh"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:/Users/mac/development/flutter/bin"
eval "$(rbenv init -)"
eval "$(jump shell)"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# Plugins
plugins=(
 zsh-syntax-highlighting
 zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
# aliases
alias dbdrop="bin/rake db:drop"
alias ys="yarn start"
alias dbcreate="bin/rake db:create"
alias dbs="bundle exec bin/rails s -p 5000"
alias g="git"
alias gs="git status"
alias gb="git branch"
alias grh="git reset --hard HEAD"
alias gcm="git commit"
alias gco="git checkout"
alias uncommit="git reset HEAD~"
alias pgrestoreprod="pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $(whoami) -d acuity_development latest.dump && bin/rails db:migrate RAILS_ENV=development "
alias vi="nvim"
alias vim="nvim"
alias dps="docker ps"
alias dk="docker kill"
alias gad="git add ."
alias pc="npx prettier --check ."
alias pw="npmx prettier --write ."
alias hma="hasura metadata apply"
alias gdb='git branch | grep -v "master\|staging" | xargs git branch -D'
alias hme="hasura metadata export"
alias ber="bundle exec rspec"
alias yco="yarn cypress open"
alias drs="development restore staging"
alias dbmd="bin/rails db:migrate RAILS_ENV=development"
alias dkall="docker container kill $(docker ps -q)"
alias rcdb="bin/rake db:drop db:create db:migrate db:seed RAILS_ENV=development"
alias gdb='git branch | grep -v "master\|staging" | xargs git branch -D'
alias rrc="rails db:drop && rails db:create && rails db:migrate"
alias rseed="rails db:seed"
alias dcup="docker-compose up"
alias dcstoph="docker-compose stop hasura"
alias dcstarth="docker-compose start hasura"
alias gpush='git push origin HEAD'
source /Users/mac/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

