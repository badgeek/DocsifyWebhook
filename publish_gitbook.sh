rm -fr dist
mkdir -p dist/src
cp -r $GIT_SOURCE_FOLDER/* dist/src/
rm -fr dist/src/.git
rm -fr _book
python build_docs.py gitbook
generate_package_template "book.json" "template/gitbook_book.json" > dist/book.json
npm run docs:build
#result in _book
rm -fr output_gitbook
mv _book output_gitbook
