#base image
FROM node:alpine

#dependencies
WORKDIR /usr/app/
COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD [ "npm","start" ]