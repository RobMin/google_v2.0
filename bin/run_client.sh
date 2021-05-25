STARTING_PATH=$PWD
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR
cd ../client

gnome-terminal -e "bash -c \"npm run start; exec bash\""

cd $STARTING_PATH
