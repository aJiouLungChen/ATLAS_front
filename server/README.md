# README

## Local development environment setup

- Commands

  1. `$ docker compose build`: to build and pull required Docker images.
  2. `$ docker compose up -d`: to start the Rails server and PostgreSQL.
  3. `$ docker compose exec atlas bundle exec rake db:create`: to create the databases in the container.
  4. `$ docker compose exec atlas bundle exec rake db:migrate`: to migrate the databases in the container.
  5. `$ docker compose down`: to quit the Rails server and PostgreSQL.

- The developer should execute the commands 1, 2, 3, and 4 sequentially to setup the local development environment for the first time.
- Use command 2 or command 5 to start or stop the Rails server and PostgreSQL afterwards.
- If there are database schema changes, command 4 should be executed after the command 2.
