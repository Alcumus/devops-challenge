FROM node:alpine as builder

#this is for any proxys if needed
# ENV http_proxy http://10.228.12.41:8888
# ENV https_proxy http://10.228.12.41:8888

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
# CMD ["npm", "start"]

FROM nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /usr/share/nginx/html
