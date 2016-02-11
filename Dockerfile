FROM node:5.6.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY myapp/. /usr/src/app/
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
