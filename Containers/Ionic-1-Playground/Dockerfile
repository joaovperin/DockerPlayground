FROM ionic-cordova-1 as install

WORKDIR /workdir


COPY ./project/ ./
RUN npm install -y
RUN cordova platform add android@6.4.0 --no-interactive

FROM ionic-cordova-1 as build

WORKDIR /workdir
COPY --from=0 /workdir/ .

CMD ["cordova", "build", "android"]
#CMD ["npm", "run", "cordova", "build", "android"]
