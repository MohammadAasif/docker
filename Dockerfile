 
FROM node:16.9.1-alpine

# Create app directory
WORKDIR /App

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . ./

EXPOSE 3000
CMD [ "npm", "start" ]

