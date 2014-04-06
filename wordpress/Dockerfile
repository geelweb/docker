FROM geelweb/php-apache
MAINTAINER Guillaume Luchet <guillaume@geelweb.org>

RUN apt-get update

RUN rm /var/www/index.html

ADD http://wordpress.org/latest.tar.gz wordpress.tar.gz
RUN tar xzf wordpress.tar.gz -C /var/www --strip-components 1
RUN rm wordpress.tar.gz
RUN chown -R www-data:www-data /var/www 

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]

