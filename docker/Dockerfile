FROM wada/ulamp
MAINTAINER Koichi WADA <kw.nachos@gmail.com>

# apache
RUN mkdir /var/www/lamp
ADD .htaccess /var/www/lamp/.htaccess
ADD .htpasswd /var/www/lamp/.htpasswd
ADD index.html /var/www/lamp/index.html
RUN chown wada -R /var/www/lamp

ADD lamp.conf /etc/apache2/sites-enabled/lamp.conf

# init
ADD init.sh /init.sh
CMD ["/init.sh"]
