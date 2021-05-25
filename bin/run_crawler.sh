STARTING_PATH=$PWD
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR
cd ../crawler

make clean
make crawler
cp drahflow.name.cfg ../temp/config.cfg

if test -f "../temp/clean_urls.csv"; then
    cat ../temp/clean_urls.csv | sed 's/.*/fetch &/' >> ../temp/config.cfg
fi

../crawler/crawler ../temp/config.cfg || echo "Crawler failed successfully"

cd $STARTING_PATH
