FROM ubuntu

EXPOSE 80
WORKDIR /var/www/html
VOLUME www:/var/www/html

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update; \
apt-get install software-properties-common -y; \
add-apt-repository ppa:ondrej/php; \
apt-get clean;

RUN apt-get update; \
apt-get install apache2 php5.6 php5.6-cli php5.6-mysql php5.6-xml php5.6-mbstring -y; \
apt-get clean; \
echo '<?php phpinfo();' > index.php

CMD apachectl -D FOREGROUND
