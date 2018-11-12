SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
FILE_PATH="$SCRIPT_PATH/../../data/subset.rdf.gz"
cayley load --init -d bolt -a ./test_cayley -i $FILE_PATH