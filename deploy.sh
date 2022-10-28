set -e

npm run build

cd dist

echo > .nojekyll

git init
git checkout -B gh-pages
git add -A
git commit -m 'deploy'

git push -f git@github.com:the-illarionov/the-illarionov.github.io.git gh-pages

cd -