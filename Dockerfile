FROM node:lts-buster
RUN git clone https://github.com/MRc-Tech999/MAFIA-MD/root/MRc-Tech999
WORKDIR /root/MRc-Tech999
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
