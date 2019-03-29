FROM node:latest
RUN mkdir app
WORKDIR /app
COPY package.json /app
RUN apt-get update \
	&& npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
