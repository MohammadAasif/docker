 
FROM node:16.9.1-alpine

# Create app directory
WORKDIR /App

COPY package*.json ./

RUN npm install
  

# Create a user group 'xyzgroup'
RUN addgroup -S Myg

# Create a user 'appuser' under 'xyzgroup'
RUN adduser -S -D -h /usr/app/src appuser Myg

# Chown all the files to the app user.
RUN chown -R appuser:Myg/usr/app

# Switch to 'appuser'
USER appuser



# Bundle app source
COPY . ./

EXPOSE 3000
CMD [ "npm", "start" ]

