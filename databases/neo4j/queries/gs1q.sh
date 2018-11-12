QUERY="MATCH (d: Director) - [r:FILMS] -> (f:Film) - [r2:GENRE] -> (g:Genre) WHERE d.directorId='m.06pj8' RETURN d, f, g"

curl -o /dev/null -s -w 'Total: %{time_total}\n' -X POST \
-H "Content-Type: application/json" \
-d "{\"statements\":[{\"statement\": \"$QUERY\"}]}" \
http://localhost:7474/db/data/transaction/commit
