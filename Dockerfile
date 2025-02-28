FROM node:20 as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm install @angular/cli -g
EXPOSE 4100
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4100", "--disable-host-check"]
