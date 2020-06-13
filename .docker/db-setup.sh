#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE roda_json_api_dev;
    CREATE DATABASE roda_json_api_test;
EOSQL
