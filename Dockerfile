FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY server ./server
COPY public ./public
COPY sql ./sql
EXPOSE 3000
CMD ["node","server/server.js"]
