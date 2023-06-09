FROM node:16.3.0-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g create-react-app
RUN npm i
COPY . .
# CMD ["npm", "start"]
# RUN npm start
RUN npm run build
RUN npm i -g serve
EXPOSE 3000
CMD [ "serve", "-S" , "build"]
