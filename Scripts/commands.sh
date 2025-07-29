#!/bin/sh

set -e

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
    echo "Waiting for the database ($POSTGRES_HOST:$POSTGRES_PORT) to be ready"
    sleep 5
done

echo "Starting the application"

py manage.py collectstatic --noinput
py manage.py makemigrations --noinput
py manage.py migrate --noinput
py manage.py runserver 0.0.0.0:8000