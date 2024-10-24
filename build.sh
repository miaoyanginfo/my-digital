#!/bin/bash

# 配置环境
npm install -g hexo-cli
mkdir hexo
cd hexo
hexo init
npm install
rm -rf source/_posts
mkdir -p source/_posts

## 安装主题(你们可以改成自己喜欢的主题)
## git clone -b master https://github.com/jerryc127/hexo-theme-butterfly.git themes/butterfly
## git clone https://github.com/next-theme/hexo-theme-next themes/next
git clone https://github.com/79e/hexo-theme-quiet themes/quiet
# 使用新的渲染器

npm i hexo-renderer-less
npm i hexo-renderer-ejs
# npm un hexo-renderer-marked --save
# npm i hexo-renderer-markdown-it --save
# npm i --save hexo-wordcount
# npm install hexo-related-posts
# npm install hexo-word-counter
# npm install hexo-generator-feed --save
# npm install hexo-generator-sitemap --save
#npm i hexo-renderer-less
#npm i hexo-renderer-ejs

# 搜索相关插件
# npm install hexo-generator-search --save
# npm install hexo-generator-searchdb
# npm install hexo-auto-category --save


# 处理图片
npm i hexo-image-link --save

# 复制文章到指定目录
cd ../
cp -r `ls | grep -v hexo | grep -v config.yml | xargs` hexo/source/_posts
# 复制配置文件
cp config.yml hexo

# 开始构建
cd hexo && hexo g --config config.yml 
