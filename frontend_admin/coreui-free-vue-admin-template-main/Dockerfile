FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY ./ .
ENTRYPOINT ["npm", "run", "serve"]
