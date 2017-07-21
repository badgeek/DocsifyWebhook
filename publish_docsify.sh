#cd ${WEBHOOK_FILEPATH}
rm -fr dist
mkdir dist
cp -r $GIT_SOURCE_FOLDER/* dist/
rm -fr dist/.git
python build_docs.py docsify
cp "template/docsify.js" dist/
generate_package_template "index.html" "template/docsify_index.html" > dist/index.html
rm -fr output_docsify
cp -r dist output_docsify