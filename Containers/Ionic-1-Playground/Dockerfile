# Installation target
FROM ionic-cordova-1 as install

RUN apt-get update -qq
RUN apt-get install -y dos2unix

WORKDIR /workdir

COPY ./project/ ./
RUN  find . -type f -print0 | xargs -0 dos2unix

COPY ./gradle.properties /root/.gradle/gradle.properties
RUN  dos2unix /root/.gradle/gradle.properties

RUN npm install -y
RUN cordova platform add android@6.4.0 --no-interactive

# Creates a build on installation target to download and cache gradle dependencies
RUN cordova build android --no-interactive

# Build target
FROM ionic-cordova-1 as build

WORKDIR /workdir
COPY --from=0 /workdir/ .

CMD ["cordova", "build", "android"]
