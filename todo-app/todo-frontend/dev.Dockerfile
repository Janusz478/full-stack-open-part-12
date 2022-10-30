FROM node:18

WORKDIR /usr/src/app

COPY . .

RUN npm install

ENV PORT=3001
ENV REACT_APP_BACKEND_URL=http://localhost:3000

CMD [ "npm", "start" ]
