FROM postgres:11.0
MAINTAINER Guillaume Luchet <guillaume@geelweb.org>

# Install PostGIS
RUN apt-get update -y
RUN apt-get install -y postgresql-11-postgis-2.5

# Add the initialization script
COPY init-postgis.sh /docker-entrypoint-initdb.d/
