#!/bin/sh
# Publish index.html to https://etrunon.duckdns.org/aproLaFinestra/ (needs the digitalOceanDroplet ssh alias).
set -e
cd "$(dirname "$0")"
scp index.html digitalOceanDroplet:/home/etrunon/websites/etrunon/aproLaFinestra/index.html
curl -fsS -o /dev/null -w 'live: %{http_code}\n' https://etrunon.duckdns.org/aproLaFinestra/
