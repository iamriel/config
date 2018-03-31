alias e='emacsclient --no-wait'

alias migrate="./manage.py migrate"
alias runserver="./manage.py runserver"
alias shell="./manage.py shell"
alias showmigrations="./manage.py showmigrations"

alias showFiles="defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder;"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder"

# Work Inovation aliases
alias inov_api="workon inov; cd ~/Projects/inovation/web_api;"
alias inov_web="cd ~/Projects/inovation/web_app;"
alias inov_infra="workon inov_infra; cd ~/Projects/inovation/infrastructure;"
alias inov_celery="inov_api; celery -A workinovation worker -l info;"
alias inov_celery_purge="inov_api; celery -A workinovation purge -f;"


# Malita aliases
alias malita_api="workon malita; cd ~/Projects/malita/profiling;"
alias malita_web="cd ~/Projects/malita/profiling-vue;"

alias docker_stop_ps="docker stop $(docker ps -a -q)"

# Syntax highligting for cat
alias pcat='pygmentize -f terminal256 -O style=monokai -g'

# Docker alias
alias dcup='docker-compose up'
alias dcdown='docker-compose down'

alias getwords='python3 ~/Projects/utils/getwords.py'
