FROM tutum/lamp:latest

# Set default mysql password
ENV MYSQL_PASS admin

# Install base packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        curl \
        curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Clone github directory
RUN rm -fr /app && git clone https://github.com/rgies/symfony.git /app

EXPOSE 80 3306
CMD ["/run.sh"]