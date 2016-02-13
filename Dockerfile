FROM node:5.6.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
VOLUME /usr/src/app

COPY myapp/package.json /usr/src/app/
RUN npm install

COPY myapp/. /usr/src/app/

EXPOSE 3000
CMD ["npm", "start"]
