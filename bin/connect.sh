#!/bin/sh
docker run --rm -it --link postgres-czech:postgres postgres-czech sh -c 'exec psql -h "$POSTGRES_PORT_5432_TCP_ADDR" -p "$POSTGRES_PORT_5432_TCP_PORT" -U postgres'
