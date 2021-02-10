#!/usr/bin/env sh
# 确保脚本抛出遇到的错误
set -e
npm run build # 生成静态文件
cd docs/.vuepress/dist # 进入生成的文件夹

# deploy to github
echo 'Marxliumal.github.io/azis-blog' > CNAME
if [ -z "$ACCESS_TOKEN" ]; then
  msg='deploy'
  githubUrl=git@github.com:Marxliumal/azis-blog.git
else
  msg='来自github action的自动部署'
  githubUrl=https://Marxliumal:${ACCESS_TOKEN}@github.com/Marxliumal/azis-blog.git
  git config --global user.name "Marxliumal"
  git config --global user.email "marxliumal@163.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages # 推送到github