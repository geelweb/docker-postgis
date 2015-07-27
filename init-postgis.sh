#!/bin/bash
set -e

# Enable PostGIS as describe here http://postgis.net/install/

# enable PostGIS
gosu postgres psql -U postgres $POSTGRES_DB -c "create extension postgis"

# enable Topology
gosu postgres psql -U postgres $POSTGRES_DB -c "create extension postgis_topology"

# fuzzy matching needed for Tiger
gosu postgres psql -U postgres $POSTGRES_DB -c "create extension fuzzystrmatch"

# Enable US Tiger Geocoder
gosu postgres psql -U postgres $POSTGRES_DB -c "create extension postgis_tiger_geocoder"

