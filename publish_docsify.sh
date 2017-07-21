source config.sh
cd /home4/lpatch/deadmediafm/manticore.deadmediafm.org/DocsifyWebhook/
rm -fr dist
mkdir dist
python build_docs.py
cp -r 8Bit-Mixtape-NEO.wiki dist/8Bit-Mixtape-NEO.wiki
rm -fr dist/8Bit-Mixtape-NEO.wiki/.git
cp docsify_template/index.html dist/