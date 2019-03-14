# base image
FROM node:9.6.1

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install react globally
RUN npm install react-scripts@1.1.1 -g --silent

# set working directory
WORKDIR /workdir

# install and cache app dependencies
RUN npm install --silent

# expose the port
EXPOSE 3000

# start app
CMD ["npm", "start"]
