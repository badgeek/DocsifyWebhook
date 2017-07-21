. "config.sh"

if [ -d "source_git/.git" ] #if directory exists
then
    echo "DIRECTORY EXISTS"
    cd $GIT_SOURCE_FOLDER
    git pull
    cd ..
else
    git clone $GIT_SOURCE_REPO $GIT_SOURCE_FOLDER
fi

if [ "${1}" == "gitbook" ]; then
    OUTPUT_TYPE="gitbook"
elif [ "${1}" == "docsify" ]; then
    OUTPUT_TYPE="docsify"
fi

if [ "${OUTPUT_TYPE}" == "gitbook" ]; then
    echo "PUBLISH GITBOOK"
    source publish_gitbook.sh     
else
    echo "PUBLISH DOCSIFY"
    source publish_docsify.sh     
fi