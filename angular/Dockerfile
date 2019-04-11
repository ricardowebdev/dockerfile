FROM ubuntu

EXPOSE 80 
WORKDIR /var/www/html
VOLUME www:/var/www/html

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update; \
apt-get install apache2 iputils-ping vim nodejs npm -y; \
apt-get clean; \
git clone https://00fa83a4db5fa9ff1fd252c003b672418ef2b472@github.com/ricardowebdev/user-management; \
cd ./user-management; \
npm install; \
npm run ng build --prod; \
cp -r ./docs/* ../ 

CMD apachectl -D FOREGROUND 
