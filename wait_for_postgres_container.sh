#!/bin/bash

RETRIES=10

until psql -h postgres -U user -Ppassword -d database -c "select 1" > /dev/null 2>&1 || [ $RETRIES -eq 0 ]; do
  echo "Waiting for postgres server, $((RETRIES--)) remaining attempts..."
  sleep 1
done
