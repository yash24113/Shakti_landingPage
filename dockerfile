# Use the official Node.js 20 image
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080
ENV PORT=8080

CMD ["npm", "start"] 