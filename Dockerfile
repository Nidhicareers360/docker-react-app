FROM node:16.19.0-alpine

WORKDIR /app

# ENV PATH /demoapp/node_modules/.bin:$PATH

COPY . ./

COPY package.json ./
RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent

CMD [ "npm", "start" ]
