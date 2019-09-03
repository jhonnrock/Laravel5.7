FROM php:7.2-apache as composerdata

RUN apt-get update
RUN apt-get install -y \
    curl \
    git \
    supervisor \
    zip \
    unzip 

RUN apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN a2enmod rewrite 

ENV APP_HOME /var/www/html

RUN mkdir -p /opt/data/public && \
    rm -r /var/www/html && \
    ln -s /opt/data/public $APP_HOME

WORKDIR $APP_HOME


# this is for mysql
FROM mysql:5.7 
#ojo aca
ENV MYSQL_ROOT_PASSWORD=_
ENV MYSQL_DATABASE=_
ENV MYSQL_USER=_
ENV MYSQL_PASSWORD=_
#ojo
RUN mkdir /home/dataphp
COPY dataphp/music.sql /home/dataphp
ADD  start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
COPY --from=composerdata $APP_HOME .
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
CMD ["/bin/bash","/usr/local/bin/start.sh"]