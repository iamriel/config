alias liox="workon liox; cd ~/Projects/liox/liox_on_demand;"
alias liox_celery="liox; celery -A liox_on_demand worker -l info;"
alias liox_celery_purge="liox; celery -A liox_on_demand purge -f;"
