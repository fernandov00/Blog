#!/bin/sh

wait_psql.sh

echo "Starting the application"

collectstatic.sh
migrate.sh
runserver.sh
