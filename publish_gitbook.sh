export GIT_DEPLOY_DIR="dist"
export GIT_DEPLOY_BRANCH="gh-pages"
export GIT_DEPLOY_REPO="git@github.com:8BitMixtape/NeoWiki.git"

rm -fr dist
mkdir dist
python build_docs.py gitbook
cp -r 8Bit-Mixtape-NEO.wiki/* dist/
rm -fr dist/.git
npm run docs:build