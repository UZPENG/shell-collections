#! /bin/sh
install_dir=$1
if [ install_dir == "" ]
then
	install_dir="/usr/local/share"
fi
rpm_file_path=${install_dir}"nginx.rpm"
sudo wget -O $rpm_file_path http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
sudo rpm -ivh $rpm_file_path
sudo yum install nginx

