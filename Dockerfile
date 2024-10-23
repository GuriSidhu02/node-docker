FROM node:latest
WORKDIR /newapp
ADD . .
RUN npm install
CMD ["node", "index.js"]
