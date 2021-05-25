STARTING_PATH=$PWD
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR
cd ../

[ -d "/path/temp/" ] || mkdir temp
[ -d "/path/data/" ] || mkdir data

bash ./bin/run_url_cleaner.sh
bash ./bin/run_crawler.sh
bash ./bin/run_server.sh
bash ./bin/run_client.sh

rm -rf temp

cd $STARTING_PATH
