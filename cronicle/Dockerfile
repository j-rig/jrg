# Use a Python 3.14 slim image
FROM node:25-slim

WORKDIR /opt/cronicle

# https://github.com/jhuckaby/Cronicle/blob/master/docs/Setup.md
RUN apt-get update && apt-get install -yq --no-install-recommends curl procps
RUN apt install -yq --reinstall ca-certificates
RUN curl -L https://github.com/jhuckaby/Cronicle/archive/v0.9.102.tar.gz | tar zxvf - --strip-components 1
RUN npm install
RUN node bin/build.js dist
RUN /opt/cronicle/bin/control.sh setup

CMD ["/opt/cronicle/bin/debug.sh", "--master"]