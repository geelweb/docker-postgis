# PostGIS image

This image is based on the official [Docker Postgres image](https://registry.hub.docker.com/_/postgres/).

This image install [PostGIS](http://postgis.net/) 2.1 on [Postgres](http://www.postgresql.org/) 9.4.

## How to use

*Start the database*

    docker run --name postgis \
    -e POSTGRES_USER=docker \
    -e POSTGRES_PASSWORD=secret \
    -d geelweb/postgis

*Connect with psql*

    docker run -it --link postgis:server --rm geelweb/postgis \
    sh -c 'exec psql -h "$SERVER_PORT_5432_TCP_ADDR" -p "$SERVER_PORT_5432_TCP_PORT" -U docker docker'

## Tags

* *9.3*: Install PostGIS 2.1 on Postgres 9.3
* *9.4*: Install PostGIS 2.1 on Postgres 9.4
