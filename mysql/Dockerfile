FROM ubuntu
MAINTAINER Guillaume Luchet <guillaume@geelweb.org>

ENV USER root
ENV PASS sviduifvb

RUN apt-get update
RUN apt-get install -y mysql-server-5.5

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN /usr/sbin/mysqld & \
	sleep 10s &&\
	echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'qwerty' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]

