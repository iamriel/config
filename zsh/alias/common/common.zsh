alias ..='cd ..'
alias c='clear'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias e='emacsclient -nw'

# Kizen
alias ktest='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com ./manage.py test -k --exclude-tag slow'
alias kshell='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com ./manage.py shell_plus'
alias kbash='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com bash'
alias kmanage='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com ./manage.py'
alias kpdb="docker attach $(docker ps | grep local | awk '{ print $1 }')"

# git
alias gf='git fetch'
alias gfo='git fetch origin'
alias gm='git merge'
alias gri='git rebase -i'
alias gc='git checkout'

# Python/Django Aliases
alias migrate="./manage.py migrate"
alias runserver="./manage.py runserver"
alias mm="./manage.py migrate"
alias mr="./manage.py runserver"
alias prunserver="pipenv run ./manage.py runserver"
alias pshell="pipenv shell"
alias mshell="./manage.py shell"
alias msp="./manage.py shell_plus"
alias showmigrations="./manage.py showmigrations"

# Vagrant aliases
alias vup="vagrant up"
alias vssh="vagrant ssh"
alias vsus="vagrant suspend"

# npm aliases
nr() {
    #do things with parameters like $1 such as
    npm run "$1"
}

# Syntax highligting for cat
alias pcat='pygmentize -f terminal256 -O style=monokai -g'
