#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" <<-EOSQL
    CREATE ROLE app WITH LOGIN PASSWORD 'postgres';
    CREATE ROLE app_password WITH LOGIN PASSWORD 'postgres';

    CREATE DATABASE app_dev OWNER app;
    CREATE DATABASE app_test OWNER app;
EOSQL
