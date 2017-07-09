FROM node:8.1.3-alpine
MAINTAINER mamewotoko@gmail.com

RUN apk update && apk add git 

RUN mkdir /work
WORKDIR "/work"

RUN git clone https://github.com/mamewotoko/whiteboard.git
WORKDIR "/work/whiteboard"
RUN npm install
CMD ["npm", "app.js"]

