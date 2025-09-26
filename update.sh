message="update"

# git update
git add -A
git commit -m $message
git push origin main --force

# hexo update
npx hexo clean && npx hexo generate && npx hexo deploy