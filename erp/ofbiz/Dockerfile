# FROM sapmachine:latest

FROM amazoncorretto:11

# https://ofbiz.apache.org/developers.html
# https://gist.github.com/bagasme/1de1908c86303c83b7bd51d50a12e041
# https://codefresh.io/docs/docs/example-catalog/ci-examples/gradle/

run yum -y install wget unzip

# run apt-get -y update

# run apt-get -y install wget unzip

RUN wget -c https://downloads.apache.org/ofbiz/apache-ofbiz-24.09.04.zip
RUN unzip apache-ofbiz-24.09.04.zip -d /opt
RUN mv /opt/apache-ofbiz-24.09.04 /opt/ofbiz

WORKDIR /opt/ofbiz

RUN ./gradlew cleanAll loadDefault


