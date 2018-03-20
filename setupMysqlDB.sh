#!/usr/bin/env bash

function waitForMysql {
    while [[ $(mysqladmin ping --silent) != "mysqld is alive" ]]; do
        printf .
        lf=$'\n'
        sleep 1
    done
    printf "$lf"
}

# Create database and table

waitForMysql
mysql -u root -e "create database data;"
mysql -u root -e "use data; create table HUMIDITY(value int, time timestamp);"

