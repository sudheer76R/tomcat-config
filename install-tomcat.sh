#!/bin/bash
sudo yum install -y java wget
cd /opt
rm -rf apache*
sudo wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.48/bin/apache-tomcat-9.0.48.tar.gz
sudo tar xvzf apache-tomcat-9.0.48.tar.gz
cp /etc/ansible/context.xml /opt/apache-tomcat-9.*/webapps/manager/META-INF/context.xml
cp /etc/ansible/context.xml /opt/apache-tomcat-9.*/webapps/host-manager/META-INF/context.xml
cp /etc/ansible/tomcat-users.xml /opt/apache-tomcat-9.*/conf/tomcat-users.xml
cd apache-tomcat-9.*/bin/
sh startup.sh
