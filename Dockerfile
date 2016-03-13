# Always use specific versions
FROM node:5.8.0-wheezy

MAINTAINER Ryan Shaw <ryan.shaw@min.vc>

# Install dependencies first - this is for caching reasons
RUN mkdir -p /src
COPY package.json /src
WORKDIR /src
RUN npm install

# Install nodemon
RUN npm install -g nodemon

# Copy the program
# ADD app /src/app

CMD ["nodemon",  "-L", "--watch", "app", "./app/index.js"]
