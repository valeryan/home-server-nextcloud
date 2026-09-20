# Nextcloud Server

This is a docker compose project to setup a Nextcloud.

## Dependencies

This container requires a proxy server like my [Home Docker Server](https://github.com/valeryan/home-server).

MySQL and Redis are provided by this Compose project. Set `MYSQL_ROOT_PASSWORD`
and `MYSQL_PASSWORD` in `.env` before starting the database. For an existing
Nextcloud instance, `MYSQL_PASSWORD` must match the database password in its
`config.php`.

`DB_SOURCE_PATH` points the project-managed named volume at the local `db`
directory. To migrate the old database into this project, copy it before the
first database start:

    	mkdir -p db
    	sudo rsync -aHAX --numeric-ids \
    		/data/docker/volumes/home-server_db-volume/_data/ db/
    	sudo chown -R "$(id -u):$(id -g)" db

The original Docker volume remains untouched as a backup. Keep the project
directory backed up; the database files are not disposable cache data.

## Setup

1. Copy `env.example` to `.env` and modify to your needs
1. Run `podman-compose up -d` to stand up the server
1. Follow nextcloud's setup instructions

## Nextcloud OCC commands

`occ.sh` in the root directory can be used to perform and nextcloud occ command. Run `./occ.sh list` to see a list of available commands.
