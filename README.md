# PostGIS image

[![Build Status](https://travis-ci.org/geelweb/docker-postgis.svg?branch=add-tests)](https://travis-ci.org/geelweb/docker-postgis)

The `geelweb/postgis` image is based on the official [Docker Postgres image](https://registry.hub.docker.com/_/postgres/). It provides a Docker container running Postgres with [PostGIS](http://postgis.net/) installed.

## Usage

*Start the database*

    docker run --name postgis \
      -e POSTGRES_USER=docker \
      -e POSTGRES_PASSWORD=secret \
      -d geelweb/postgis

*Connect with psql*

    docker run -it --link postgis:server --rm geelweb/postgis \
      sh -c 'exec psql -h "$SERVER_PORT_5432_TCP_ADDR" -p "$SERVER_PORT_5432_TCP_PORT" -U docker docker'

## Supported tags

* `10.0`, `10`, `latest` [(10/Dockerfile)](10/Dockerfile) Run Postgres 10 with PostGIS 2.4
* `9.6`, `9` [(9.6/Dockerfile)](9.6/Dockerfile) Run Postgres 9.6 with PostGIS 2.3
* `9.5` [(9.5/Dockerfile)](9.5/Dockerfile) Run Postgres 9.5 with PostGIS 2.2
* `9.4` [(9.4/Dockerfile)](9.4/Dockerfile) Run Postgres 9.4 with PostGIS 2.1
* `9.3` [(9.3/Dockerfile)](9.3/Dockerfile) Run Postgres 9.3 with PostGIS 2.1
