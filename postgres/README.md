# postgres container + mount + compose

## Run

- `docker compose up`
- `docker exec -it postgres-db-1 sh`
- `psql -U postgres`

- `docker exec -it postgres-db-1 psql -U postgres` to run psql in the container

## use

- `\l` to list databases
- `\c <database>` to connect to a database
- `\dt` to list tables
