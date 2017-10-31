#!/bin/bash
set -e

export PGPASSWORD="$POSTGRES_PASSWORD"

# Enable PostGIS as describe here http://postgis.net/install/

# enable PostGIS
psql -U $POSTGRES_USER $POSTGRES_DB -c "create extension postgis"

# enable Topology
psql -U $POSTGRES_USER $POSTGRES_DB -c "create extension postgis_topology"

# fuzzy matching needed for Tiger
psql -U $POSTGRES_USER $POSTGRES_DB -c "create extension fuzzystrmatch"

# Enable US Tiger Geocoder
psql -U $POSTGRES_USER $POSTGRES_DB -c "create extension postgis_tiger_geocoder"


