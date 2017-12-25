FROM node:7.10.1-alpine
MAINTAINER Olawale Malomo <warlay234@gmail.com>

WORKDIR /www

ADD application/package.json /www/
RUN npm install \
	&& npm cache clean;

ADD application /www

CMD ["npm", "start"]