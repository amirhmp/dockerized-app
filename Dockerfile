FROM node:18.4.0-alpine3.16
WORKDIR /app
COPY package*.json .
RUN npm i
COPY . .
RUN chmod o+w+r node_modules/
ENV API_URL=https://api.alaki.com
EXPOSE 3000
RUN addgroup app && adduser -S -G app app
USER app
CMD [ "npm", "start" ]
