
FROM node:9.6.1

# Set path for node
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Working directory
WORKDIR /workdir
RUN cd /workdir

# Expose common ports
EXPOSE 8080
EXPOSE 80
EXPOSE 3000
EXPOSE 4200

# Start the app
CMD ["node", "index.js"]
