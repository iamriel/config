alias ..='cd ..'
alias c='clear'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias e='emacsclient -nw'

# Syntax highligting for cat
alias pcat='pygmentize -f terminal256 -O style=monokai -g'

# Kizen
# alias ktest='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com ./manage.py test -k --exclude-tag slow'
# alias kshell='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com ./manage.py shell_plus'
# alias kbash='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com bash'
# alias kmanage='cd ~/projects/kizen/hapi-api; docker-compose exec app.local.evosqa.com ./manage.py'
# alias kpdb="docker attach $(docker ps | grep local | awk '{ print $1 }')"

alias kup='cd ~/projects/kizen/webapp; docker-compose -f docker-compose.override.yml up'
alias ktest='cd ~/projects/kizen/webapp; docker-compose -f docker-compose.override.yml exec web ./manage.py test -k --exclude-tag slow'
alias kshell='cd ~/projects/kizen/webapp; docker-compose -f docker-compose.override.yml exec web ./manage.py shell_plus'
alias kbash='cd ~/projects/kizen/webapp; docker-compose -f docker-compose.override.yml exec web bash'
alias kmanage='cd ~/projects/kizen/webapp; docker-compose -f docker-compose.override.yml exec web ./manage.py'
alias kpdb="docker attach $(docker ps | grep web | awk '{ print $1 }')"

pods_staging() {
    kubectl -n staging get pods
}
pods_int() {
    kubectl -n integration get pods
}
bash_staging() {
    kubectl -n staging exec -ti $(kubectl -n staging get pods | grep webapp-worker | awk '{ print $1 }') -- bash
}
bash_int() {
    kubectl -n staging exec -ti $(kubectl -n integration get pods | grep webapp-worker | awk '{ print $1 }') -- bash
}
