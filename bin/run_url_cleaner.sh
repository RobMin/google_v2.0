STARTING_PATH=$PWD
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR
cd ../url_cleaner

python3 cleaner.py

cd $STARTING_PATH
