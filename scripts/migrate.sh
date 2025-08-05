#!/bin/sh
makemigrations.sh
echo 'migrating...'
python3 manage.py migrate --noinput