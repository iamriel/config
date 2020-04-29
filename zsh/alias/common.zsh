alias ..='cd ..'
alias c='clear'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias e='emacsclient -nw'

# Systemctl
alias start_emacs='systemctl --user start emacs'
alias stop_emacs='systemctl --user stop emacs'

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


alias showFiles="defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder;"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder"

# Jens aliases
alias metronom_api="cd ~/Projects/jens/metronom-pro-backend;"
alias metronom_infra="cd ~/Projects/jens/metronom-pro-infrastructure;"

# Malita aliases
alias malita_api="workon malita; cd ~/Projects/malita/profiling;"
alias malita_web="cd ~/Projects/malita/profiling-vue;"

# Doxa
alias doxa_api="cd ~/Projects/infosoft/doxa/api;pipenv shell;"
alias doxa_web="cd ~/Projects/infosoft/doxa/docsan_vue"

alias docker_stop_ps="docker stop $(docker ps -a -q)"

# Syntax highligting for cat
alias pcat='pygmentize -f terminal256 -O style=monokai -g'

# Docker alias
alias dcup='docker-compose up'
alias dcdown='docker-compose down'

alias getwords='python3 ~/Projects/utils/getwords.py'

alias reset_dns='sudo killall -HUP mDNSResponder; sleep 2;'
