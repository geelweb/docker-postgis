FROM postgres:9.3
MAINTAINER Guillaume Luchet <guillaume@geelweb.org>

# Install PostGIS
RUN apt-get update -y
RUN apt-get install -y postgresql-9.3-postgis-2.1

# Add the initialization script
COPY init-postgis.sh /docker-entrypoint-initdb.d/
