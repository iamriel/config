alias trivia_api="workon trivia; cd ~/Projects/trivia/api/"
alias trivia_celery="trivia; celery -A trivianights_api worker -l info;"
alias trivia_celery_purge="trivia; celery -A trivianights_api purge -f;"
