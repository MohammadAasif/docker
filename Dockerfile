 
FROM node:16.9.1-alpine

# Create app directory
WORKDIR /app

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . ./

EXPOSE 8080
CMD [ "npm", "start" ]

