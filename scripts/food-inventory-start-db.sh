#!/usr/bin/env bash

docker stop food-inventory-migration
docker rm food-inventory-migration

docker run \
    -e POSTGRES_PASSWORD=password1E! \
    -p 5432:5432 \
    --name food-inventory-migration \
    -d postgres

sleep 15
docker cp foodinventorycreatedb.sql food-inventory-migration:/foodinventorycreatedb.sql
sleep 15
docker exec -it food-inventory-migration sh -c "psql -U postgres -f /foodinventorycreatedb.sql"
