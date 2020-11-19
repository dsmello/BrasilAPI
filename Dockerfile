FROM node:14.15-alpine as build

WORKDIR /tmp
COPY . /tmp

RUN npm -g install npm
RUN npm install
RUN npm audit fix
RUN npm install -g pkg
RUN pkg .
