FROM ubuntu

RUN apt-get update && apt-get install -y php7.0

CMD php -S 0.0.0.0:80 -t /var/www/html/
