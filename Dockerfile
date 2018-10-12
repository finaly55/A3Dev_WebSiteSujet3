FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY ./index.ts ./

COPY . .

EXPOSE 8000
CMD [ "node", "build/index.js" ]

