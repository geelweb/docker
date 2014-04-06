# Geelweb's docker

Some Dockerfiles I use to test Docker

## apache

    $ sudo docker build -t "geelweb/apache2" ./apache2/
    $ sudo docker run -p 80:80 -d geelweb/apache2

    $ sudo docker run -v ~/www:/var/www -p 80:80 -d geelweb/apache2

## php-apache

    $ sudo docker build -t "geelweb/php-apache" ./php-apache/
    $ sudo docker run -v ~/www:/var/www -p 80:80 -d geelweb/php-apache

## mysql

    $ sudo docker build -t "geelweb/mysql" ./mysql/
    $ sudo docker run -p 3306:3306 -d geelweb/mysql

    $ sudo docker ps
    $ sudo docker inspect <CONTAINER_ID>

    $ mysql -h <IP> -u root -p

