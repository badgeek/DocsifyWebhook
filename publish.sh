export GIT_DEPLOY_DIR="dist"
export GIT_DEPLOY_BRANCH="gh-pages"
export GIT_DEPLOY_REPO="https://github.com/badgeek/DocsifyWebhook.git"

rm -fr dist
mkdir dist
python build_docs.py
cp -r 8Bit-Mixtape-NEO.wiki dist/8Bit-Mixtape-NEO.wiki
rm -fr dist/8Bit-Mixtape-NEO.wiki/.git
cp index.html dist/
sh deploy.sh