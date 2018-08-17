#! /bin/sh
if ! [ -x $(command -v node ) ]; then
	sudo yum install node	
fi
# 安装hexo
sudo npm install hexo-cli -g
# 安装hexo git 部署插件
sudo npm install hexo-deployer-git --save
# 安装hexo 字数统计插件
sudo npm i--save hexo-wordcount
# 初始化hexo博客
echo "安装hexo...安装目录~/blog.."
hexo init ~/blog
cd ~/blog
npm install
# 恢复备份配置
rm ~/blog/_config.yml
wget -O ~/blog/_config.yml https://raw.githubusercontent.com/UZPENG/HEXO-REPO/master/_config.yml
# 下载主题
git clone --branch v5.1.2 https://github.com/iissnan/hexo-theme-next ~/blog/themes/next
# 替换主题配置
wget -O ~/blog/themes/next/_config.yml https://raw.githubusercontent.com/UZPENG/HEXO-REPO/master/themes/next/_config.yml
