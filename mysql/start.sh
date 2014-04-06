#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
    mysql_install_db

    /usr/sbin/mysqld & sleep 10s 
    echo "GRANT ALL ON *.* TO $USER@'%' IDENTIFIED BY '$PASS' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

    killall mysqld
    sleep 10s
fi

/usr/bin/mysqld_safe

