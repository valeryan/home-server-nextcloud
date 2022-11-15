# Nextcloud Server

This is a docker compose project to setup a Nextcloud.

## Dependencies

This container requires a proxy server like my [Home Docker Server](https://github.com/valeryan/home-server).

## Setup

1. Copy `env.example` to `.env` and modify to your needs
1. Run `docker compose up -d` to stand up the sever
1. Follow nextcloud's setup instructions

## Nextcloud OCC commands
`occ.sh` in the root directory can be used to perform and nextcloud occ command. Run `./occ.sh list` to see a list of available commands.
