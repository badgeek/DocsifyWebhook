DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export GIT_SOURCE_REPO="git@github.com:8BitMixtape/8Bit-Mixtape-NEO.wiki.git"
export GIT_DEPLOY_REPO="git@github.com:8BitMixtape/NeoWiki.git"
export GIT_DEPLOY_DIR="output_docsify"
export GIT_DEPLOY_BRANCH="gh-pages"
export WEBHOOK_FILEPATH="${DIR}/"
export DOCSIFY_BASEPATH="" #for github use example NeoWiki
export DOCSIFY_SIDEBAR="sidebar.md"
export DOCSIFY_NAME="8BitMixtape-NEO"
export OUTPUT_TYPE="docsify"
export TEMPLATE_BASE_GIT="https://github.com/8BitMixtape/NeoDocs/tree/master/src"
export TEMPLATE_DOMAIN="https://8bitmixtape.github.io"