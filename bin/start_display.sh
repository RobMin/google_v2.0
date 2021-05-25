STARTING_PATH=$PWD
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR
cd ../

bash ./bin/run_server.sh
bash ./bin/run_client.sh

cd $STARTING_PATH
