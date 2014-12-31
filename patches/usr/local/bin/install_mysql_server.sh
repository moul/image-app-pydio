#!/bin/bash

if [ ! -f /root/.my.cnf ]; then
    username="root"
    dbname="pydio"
    password=$(pwgen 42)

    echo mysql-server mysql-server/root_password password $password | debconf-set-selections
    echo mysql-server mysql-server/root_password_again password $password | debconf-set-selections
    apt-get install -y -q mysql-server
    cat <<EOF > /root/.my.cnf
[client]
user = root
password = $password
EOF

    echo "CREATE DATABASE $dbname" | mysql -u $username -p$password
fi
