FROM openjdk:8-jdk

# Maven version and checksum for integrity validations
ARG MAVEN_VERSION=3.6.1
ARG USER_HOME_DIR="/src"
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

# Download and configure maven
RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c - \
  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# Set some environment
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
COPY settings-docker.xml /usr/share/maven/ref/

# Updates system and installs dos2unix to allow script editing on Windows
RUN apt-get update && apt-get install dos2unix

# Copy entry point shellscript
COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat

# Convert line endings
RUN dos2unix /usr/local/bin/docker-entrypoint.sh /usr/share/maven/ref/settings-docker.xml

# Defines the entrypoint and the build command as default
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["build"]
