rm -fr dist
mkdir dist
cp -r $GIT_SOURCE_FOLDER/* dist/
rm -fr dist/.git
rm -fr _book
python build_docs.py gitbook
npm run docs:build
#result in _book
rm -fr output_gitbook
mv _book output_gitbook
