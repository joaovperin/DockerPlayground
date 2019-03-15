FROM oracle/graalvm-ce:1.0.0-rc13

# Install some deps
RUN gu install ruby
RUN gu install python

# Working directory
WORKDIR /workdir
RUN cd /workdir

# Expose backend common ports
EXPOSE 80
EXPOSE 8080
EXPOSE 8090

# Expose backend common ports
EXPOSE 3000
EXPOSE 4200

# Starts
