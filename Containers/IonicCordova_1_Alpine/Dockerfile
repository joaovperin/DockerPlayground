FROM alpine

WORKDIR /home

ENV ANDROID_HOME /opt/android-sdk-linux

RUN apk update
RUN apk add vim wget curl gnupg unzip python chrpath libssl-dev libxft-dev subversion git
#build-essential

# https://nodejs.org/dist/v6.10.2/node-v6.10.2-linux-x64.tar.xz
#RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
#    && apt-get install -y nodejs \
#    && apt-get install -y npm

#RUN dpkg --add-architecture i386 \
#    && apt-get update -qq \
#    && DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-8-jdk libc6:i386 libstdc++6:i386 libgcc1:i386 libncurses5:i386 libz1:i386

# https://developer.android.com/studio/
# RUN cd /opt \
#     && wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -O android-sdk-tools.zip \
#     && unzip -q android-sdk-tools.zip -d ${ANDROID_HOME} \
#     && rm android-sdk-tools.zip

# ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools

# RUN yes | sdkmanager --licenses

# RUN sdkmanager "tools" "platform-tools"

# # SDKs
# RUN yes | sdkmanager \
#     "platforms;android-26" \
#     "build-tools;27.0.3" \
#     "system-images;android-26;google_apis;x86" \
#     "extras;android;m2repository" \
#     "extras;google;m2repository" \
#     "extras;google;google_play_services" \
#     "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2" \
#     "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.1" \
#     "add-ons;addon-google_apis-google-23" \
#     "add-ons;addon-google_apis-google-22" \
#     "add-ons;addon-google_apis-google-21"

# # Gradle
# RUN apt-get update \
#     && apt-get -y install gradle \
#     && gradle -v

# RUN apt-get clean


# RUN apt-get install -y dos2unix \
#     && dos2unix ./*.sh

# RUN npm install -g ionic@3.19.1
# RUN npm install -g cordova@6.5.0
# RUN npm install -g gulp@3.9.1
# RUN npm install -g bower@1.8.4

# RUN apt-get install -y libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev

# # https://github.com/Medium/phantomjs/releases/download/v2.1.1/phantomjs-2.1.1-linux-x86_64.tar.bz2
# # wget https://github.com/Medium/phantomjs/releases/download/v2.1.1/${PHANTOM_JS}.tar.bz2
# ENV PHANTOM_JS phantomjs-2.1.1-linux-x86_64

# RUN tar xvjf ${PHANTOM_JS}.tar.bz2 \
#     && mv ${PHANTOM_JS} /usr/local/share \
#     && ln -sf /usr/local/share/${PHANTOM_JS}/bin/phantomjs /usr/local/bin \
#     && rm ${PHANTOM_JS}.tar.bz2

# # Cleanup
# RUN apt-get clean

# RUN echo "-> Done!"
