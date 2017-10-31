FROM postgres:9.5
MAINTAINER Guillaume Luchet <guillaume@geelweb.org>

# Install PostGIS
RUN apt-get update -y
RUN apt-get install -y postgresql-9.5-postgis-2.2

# Add the initialization script
COPY init-postgis.sh /docker-entrypoint-initdb.d/
