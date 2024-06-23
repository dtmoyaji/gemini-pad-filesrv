#!/bin/bash

cd /var/www/html

sudo -u www-data php occ db:add-missing-indices

sudo -u www-data php occ app:install fulltextsearch
sudo -u www-data php occ app:install fulltextsearch_elasticsearch
sudo -u www-data php occ app:install files_fulltextsearch

sudo -u www-data php occ config:import /opt/gpfsrv/fulltextsearch.json
sudo -u www-data php occ fulltextsearch:check
