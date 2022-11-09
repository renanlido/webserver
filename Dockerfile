FROM node:alpine

USER node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/nose/.npm-global/bin

# RUN mkdir -p /home/webserver/node_modules && chown -R node:node /home/webserver && chown -R node:node /root/.npm

WORKDIR /home/node/webserver

COPY package*.json ./
RUN npm install

# COPY --chown=node:node . .

COPY . .

EXPOSE 1548



CMD ["npm", "run", "dev"]