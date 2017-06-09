FROM nginx
MAINTAINER Johnie Hjelm <johnie.hjelm@cloudnine.se>

# Add the Dotdeb repo
RUN apt-get update
RUN apt-get install -y curl wget unzip

# Installing PHP 7
RUN apt-get install -y php7.0-fpm php7.0-cli php7.0-mysql php7.0-curl php7.0-gd php7.0-mcrypt php7.0-xdebug php7.0-memcache php7.0-memcached

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# Download WordPress CLI
RUN curl -L "https://github.com/wp-cli/wp-cli/releases/download/v0.24.1/wp-cli-0.24.1.phar" > /usr/bin/wp && \
    chmod +x /usr/bin/wp

# Adding Nginx & PHP configuration files
ADD conf/nginx.conf /etc/nginx/nginx.conf
ADD conf/php.ini /etc/php/7.0/fpm/php.ini
ADD conf/xdebug.ini /etc/php/mods-available/xdebug.ini

# Add virtual hosts
ADD vhost/ /etc/nginx/conf.d/

# Run
ADD conf/start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
