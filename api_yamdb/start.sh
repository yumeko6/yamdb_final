#!/bin/bash
echo 'Применяются миграции...'
python3 manage.py migrate
echo 'Загружается дамп базы данных...'
python3 manage.py loaddata fixtures.json
echo 'Контейнер запускается...'
gunicorn api_yamdb.wsgi:application --bind 0:8000