function generate_package_template() #platforms
{
local _platforms=${1}
local _template=${2}
eval "cat <<EOF
$(<./${_template})
EOF
" 2> /dev/null
}


#cd ${WEBHOOK_FILEPATH}
rm -fr dist
mkdir dist
cp -r $GIT_SOURCE_FOLDER/* dist/
rm -fr dist/.git
python build_docs.py docsify
generate_package_template "index.html" "template/docsify_index.html" > dist/index.html
rm -fr output_docsify
cp -r dist output_docsify