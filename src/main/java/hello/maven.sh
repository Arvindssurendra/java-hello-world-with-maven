#!/bin/bash

# Update the package list and install necessary utilities
sudo apt update
sudo apt install -y software-properties-common

# Add the Oracle JDK PPA and accept the license agreement
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
echo debconf shared/accepted-oracle-license-v1-2 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-2 seen true | sudo debconf-set-selections

# Install Oracle JDK 11
sudo apt install -y oracle-java11-installer

# Set the installed Java version as the default
sudo apt install -y oracle-java11-set-default

# Install Apache Maven
sudo apt install -y maven

# Display the installed versions
java -version
mvn -version
