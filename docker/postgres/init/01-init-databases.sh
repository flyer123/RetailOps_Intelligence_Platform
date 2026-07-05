#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<EOF

SELECT 'CREATE DATABASE airflow'
WHERE NOT EXISTS (
    SELECT FROM pg_database WHERE datname='airflow'
)\gexec

SELECT 'CREATE DATABASE superset'
WHERE NOT EXISTS (
    SELECT FROM pg_database WHERE datname='superset'
)\gexec

SELECT 'CREATE DATABASE retailops'
WHERE NOT EXISTS (
    SELECT FROM pg_database WHERE datname='retailops'
)\gexec

EOF
