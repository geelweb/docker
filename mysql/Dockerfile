FROM ubuntu
MAINTAINER Guillaume Luchet <guillaume@geelweb.org>

ENV USER root
ENV PASS qwerty

RUN apt-get update
RUN apt-get install -y mysql-server-5.5

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD ./start.sh /opt/start.sh

EXPOSE 3306

CMD ["/bin/bash", "/opt/start.sh"]

