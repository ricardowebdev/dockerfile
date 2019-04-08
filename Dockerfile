FROM ubuntu

EXPOSE 80
WORKDIR /var/www/html
VOLUME www:/var/www/html

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update; \
apt-get install apache2 iputils-ping composer php7.2 php7.2-cli php7.2-mbstring php7.2-xml -y; \
apt-get clean; \
echo '<?php phpinfo();' > info.php

CMD apachectl -D FOREGROUND
