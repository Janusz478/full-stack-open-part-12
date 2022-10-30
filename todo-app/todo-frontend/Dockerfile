FROM node:18 AS base
WORKDIR /usr/src/app
COPY package.json package.json
COPY package-lock.json package-lock.json

FROM base AS test
RUN npm ci
COPY . .
ENV CI=true
RUN npm run test

FROM base AS dev
COPY --from=test /usr/src/app /usr/src/app
ENV PORT=3001
ENV REACT_APP_BACKEND_URL=http://localhost:3000
CMD [ "npm", "start" ]
