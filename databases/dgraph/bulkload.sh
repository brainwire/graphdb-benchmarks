SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
FILE_PATH="$SCRIPT_PATH/../../data/21million.rdf.gz"
SCHEMA_PATH="$SCRIPT_PATH/../../data/21million.schema"
dgraph bulk -r $FILE_PATH  -s $SCHEMA_PATH --map_shards=6 --reduce_shards=1 --http=localhost:8000 -z localhost:5080
