#! /bin/sh
install_dir=$1
if [ $install_dir == ""]
then
  install_dir="/usr/local/share"
fi
rpm_file_path=${install_dir}"mysql57.rpm"
sudo wget -O $rpm_file_path https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm 
sudo rpm -ivh $rpm_file_path
sudo yum install mysql-server
