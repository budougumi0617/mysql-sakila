FROM mysql:8.0

COPY sakila-db/sakila-schema.sql /docker-entrypoint-initdb.d/00_sakila-schema.sql
COPY sakila-db/sakila-data.sql /docker-entrypoint-initdb.d/01_sakila-data.sql
COPY sakila-db/sakila.mwb /docker-entrypoint-initdb.d/sakila.mwb
