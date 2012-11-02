#!/usr/bin/bash

#This will set up your machine for using django 1.4

sudo add-apt-repository -y ppa:pitti/postgresql
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:bchesneau/gunicorn
sudo add-apt-repository -y ppa:nginx/stable
sudo apt-get update -y
sudo apt-get install -y nginx memcached rsync libpq-dev python-dev libxslt1-dev libxml2-dev python-psycopg2 git-core redis-server postgresql-9.1 inetutils-syslogd apache2-utils python-pip libevent-dev 

sudo pip install virtualenv gevent setproctitle django

sudo mkdir -p /var/log/django /var/log/gunicorn /var/run/gunicorn /var/www
sudo useradd -Ur gunicorn -d /var/run/gunicorn
sudo chown -R ubuntu:ubuntu /var/www
sudo chown -R gunicorn:gunicorn /var/log/django /var/log/gunicorn /var/run/gunicorn
sudo ln -s /etc/nginx/sites-enabled /etc/nginx/enabled
sudo ln -s /etc/nginx/sites-available /etc/nginx/available
