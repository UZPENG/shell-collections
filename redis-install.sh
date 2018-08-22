#! /bin/sh
if [ $UID -ne 0];
then
	echo "需要root权限"
	exit 1
fi
install_dir=$1
if [ ${install_dir} == "" ]
	${install_dir}="/usr/local/share"
fi
install_path=${install_dir}"/redis-4.0.tar.gz"
wget -O $install_path  http://download.redis.io/releases/redis-4.0.11.tar.gz
tar xzf $install_path
cd $install_path
make
ln -s $install_dir"/redis-4.0/src/redis-server" /bin/redis-server
ln -s $install_dir"/redis-4.0/src/redis-cli" /bin/redis-cli
