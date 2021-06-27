#!/bin/bash
sudo yum install -y java wget
cd /opt
rm -rf apache*
sudo wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.48/bin/apache-tomcat-9.0.48.tar.gz
sudo tar xvzf apache-tomcat-9.0.48.tar.gz
rm -rf apache*.gz
git clone https://github.com/adhig93/tomcat-config
cp ./tomcat-config/context.xml /opt/apache-tomcat-9.*/webapps/manager/META-INF/context.xml
cp ./tomcat-config/context.xml /opt/apache-tomcat-9.*/webapps/host-manager/META-INF/context.xml
cp ./tomcat-config/tomcat-users.xml /opt/apache-tomcat-9.*/conf/tomcat-users.xml
rm -rf tomcat-config
cd apache-tomcat-9.*/bin/
sh startup.sh
