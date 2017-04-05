#!/usr/bin/env bash

#mysql
echo "drop database d8;" | mysql -uroot
echo "create database d8;" | mysql -uroot

mysql -u root -p d8 --password="" < /home/vagrant/www/dump.sql


cd ~/www/docroot/sites/local.d8.com && drush en d8_updates  -y && drush updb -y  &&  drush cc all
