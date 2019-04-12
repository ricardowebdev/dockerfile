FROM ubuntu

EXPOSE 80 
WORKDIR /var/www/html
VOLUME ./www:/var/www/html

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update; \
apt-get install apache2 git iputils-ping vim curl nodejs npm -y; \
curl -sL https://deb.nodesource.com/setup_10.x | bash -; \
apt-get install nodejs npm -y; \
git clone https://00fa83a4db5fa9ff1fd252c003b672418ef2b472@github.com/ricardowebdev/user-management; \
cd ./user-management/; \
npm install; \
npm install -g npm; \
npm run ng build --prod; \
cp -r ./docs/* ../ 

CMD apachectl -D FOREGROUND 
