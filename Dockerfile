FROM mcr.microsoft.com/devcontainers/base:jammy

RUN apt-get update
RUN apt-get install -yq tzdata && ln -fs /usr/share/zoneinfo/Europe/Paris /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get -yq install wget sudo openjdk-18-jdk-headless make gcc gnat-9 locales git time
RUN wget https://archive.apache.org/dist/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz -P /tmp
RUN tar xzvf /tmp/apache-maven-*.gz -C /opt
RUN ln -s /opt/apache-maven-3.8.4 /opt/maven
RUN apt-get clean 
RUN mkdir /usr/local/ima
COPY ima_sources.tgz /usr/local/ima
RUN cd /usr/local/ima && tar xzvf ima_sources.tgz
RUN locale-gen --no-purge en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en 

COPY bashrc /home/vscode/.bashrc