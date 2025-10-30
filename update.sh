# main分支为web分支，source分支为同步分支
message="update web"

# git update
git add -A
git commit -m $message
git push origin source:main --force
git push origin source:source --force

# hexo update
# npx hexo clean && npx hexo generate && npx hexo deploy

# git sync
# git pull origin source
