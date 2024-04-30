#!bin/bash

#JDK installation

wget https://download.java.net/java/GA/jdk13.0.1/cec27d702aa74d5a8630c65ae61e4305/9/GPL/openjdk-13.0.1_linux-x64_bin.tar.gz

tar -xvf openjdk-13.0.1_linux-x64_bin.tar.gz

mv jdk-13.0.1 /opt/

#I have moved JDK to /opt, you can keep it anywhere in the file system.

spacing=$(echo "   \n  ")  # Create a variable with five spaces

echo "I have moved JDK to /opt, you "$spacing"can keep it anywhere in the file syst"  

JAVA_HOME='/opt/jdk-13.0.1'
PATH="$JAVA_HOME/bin:$PATH"
export PATH

java -version

sleep 5

#Maven Installation


wget https://mirrors.estointernet.in/apache/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz

tar -xvf apache-maven-3.9.6-bin.tar.gz

mv apache-maven-3.9.6 /opt/


M2_HOME='/opt/apache-maven-3.9.6'
PATH="$M2_HOME/bin:$PATH"
export PATH

mvn -version

