
# syntax=docker/dockerfile:1

FROM node:16

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

# Expose port 3000
# Added EXPOSE statement to specify the port to be exposed
EXPOSE 3000

CMD [ "node", "index.js" ]
