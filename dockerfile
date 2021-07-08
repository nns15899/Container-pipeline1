FROM debian
RUN apt update
RUN apt -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
