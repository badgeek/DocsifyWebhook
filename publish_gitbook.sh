source config.sh
rm -fr dist
mkdir dist
python build_docs.py gitbook
cp -r 8Bit-Mixtape-NEO.wiki/* dist/
rm -fr dist/.git
npm run docs:build