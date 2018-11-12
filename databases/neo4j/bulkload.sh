SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
CSV_FOLDER="$SCRIPT_PATH/../../data/csv"
neo4j-admin import \
--database film.db \
--id-type string \
--nodes:Film $CSV_FOLDER/films.csv \
--nodes:Genre $CSV_FOLDER/genres.csv \
--nodes:Director $CSV_FOLDER/directors.csv \
--relationships:GENRE $CSV_FOLDER/filmgenre.csv \
--relationships:FILMS $CSV_FOLDER/directorfilm.csv