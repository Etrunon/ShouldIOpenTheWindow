#!/bin/sh
# Publish the site to https://etrunon.duckdns.org/aproLaFinestra/ (needs the digitalOceanDroplet ssh alias).
set -e
cd "$(dirname "$0")"
R=digitalOceanDroplet:/home/etrunon/websites/etrunon
scp index.html $R/aproLaFinestra/index.html
scp robots.txt sitemap.xml $R/
curl -fsS -o /dev/null -w 'live: %{http_code}\n' https://etrunon.duckdns.org/aproLaFinestra/
