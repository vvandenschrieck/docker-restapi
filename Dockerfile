FROM greyltc/lamp
MAINTAINER Virginie Van den Schrieck <v.vandenschrieck@ephec.be>

ADD setupMysqlDB.sh /usr/sbin/setup-mysql-db


CMD start-servers; setup-mysql-user; setup-mysql-db; sleep infinity
