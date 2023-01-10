#!/usr/bin/env sh

# 发生错误时终止
set -e
rm -rf docs
# 构建
npm run build

# 放置 .nojekyll 以绕过 Jekyll 的处理。
echo > .nojekyll

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

# git init
# git remote add origin https://github.com/leeguooooo/vite_page_test.git
# git checkout -B main
git add -A
git commit -m 'deploy'
git push -f origin main

# 如果你要部署在 https://<USERNAME>.github.io
# git push -f git@github.com:leeguooooo/vite_page_test.git main

# 如果你要部署在 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

# cd -
