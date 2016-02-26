FROM tutum/lamp:latest
ENV MYSQL_PASS admin
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN rm -fr /app && git clone https://github.com/rgies/symfony.git /app
EXPOSE 80 3306
CMD ["/run.sh"]