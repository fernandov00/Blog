#!/bin/sh

set -e

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
    echo "Waiting for the database ($POSTGRES_HOST:$POSTGRES_PORT) to be ready"
    sleep 5
done