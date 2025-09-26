# main分支为web分支，source分支为同步分支
if [ $# -gt 0 ]; then
    message=$1
else
    message="update web"
fi

# git update
git add -A
git commit -m $message
git push origin main:main main:source --force

# hexo update
npx hexo clean && npx hexo generate && npx hexo deploy

# git sync
# git pull origin source
