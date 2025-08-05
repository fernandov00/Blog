#!/bin/sh
echo 'collecting static files...'
python3 manage.py collectstatic --noinput
