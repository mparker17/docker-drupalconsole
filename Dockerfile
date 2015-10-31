FROM drupal:8
MAINTAINER M Parker "mparker17@536298.no-reply.drupal.org"

RUN php -r "readfile('http://drupalconsole.com/installer');" | php && \
    mv console.phar /usr/local/bin/

VOLUME [ "/var/www/html" ]
WORKDIR "/var/www/html"
ENTRYPOINT [ "/usr/local/bin/console.phar" ]
CMD [ "list" ]
