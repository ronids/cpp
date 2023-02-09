FROM jenkins/jenkins
USER root
#Define variables
ENV MAVEN_VERSION 3.8.7

#Update Base OS and install additional tools
RUN apt-get update && apt-get install -y wget
RUN  wget --no-verbose https://downloads.apache.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz -P /tmp/
RUN tar xzf /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz -C /opt/ 
RUN ln -s  /opt/apache-maven-$MAVEN_VERSION /opt/maven 
RUN ln -s /opt/maven/bin/mvn /usr/local/bin 
RUN rm /tmp/apache-maven-$MAVEN_VERSION-bin.tar.gz 

# Install CMake inside Jenkins to find compiler in the dockerization
# RUN wget -qO- "https://cmake.org/files/v3.26/cmake-3.26.0-rc1.tar.gz" | tar --strip-components=1 -xz -C /usr/local

RUN wget "https://cmake.org/files/v3.26/cmake-3.26.0-rc1-linux-x86_64.sh" \
      -q -O /tmp/cmake-install.sh \
      && chmod u+x /tmp/cmake-install.sh \
      && mkdir /usr/bin/cmake \
      && /tmp/cmake-install.sh --skip-license --prefix=/usr/bin/cmake \
      && rm /tmp/cmake-install.sh

ENV PATH="/usr/bin/cmake/bin:${PATH}"

# Instalar compiladores: gcc g++
RUN apt-get update && apt-get install -y build-essential

#Set up permissions
RUN chown jenkins:jenkins /opt/maven;
ENV MAVEN_HOME=/opt/mvn
USER jenkins

