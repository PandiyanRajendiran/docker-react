FROM node:21.6 as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


COPY --from=builder /app/build /usr/share/nginx/html
