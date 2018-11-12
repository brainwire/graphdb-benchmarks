QUERY="MATCH (d: Director) - [r:FILMS] -> (f:Film) WHERE d.name CONTAINS 'Steven Spielberg' AND f.release_date >= '1984' AND f.release_date <= '2000' WITH d,f ORDER BY f.release_date ASC RETURN d, f"
curl -o /dev/null -s -w 'Total: %{time_total}\n' -X POST -H "Content-Type: application/json" \
-d "{\"statements\":[{\"statement\": \"$QUERY\"}]}" \
http://localhost:7474/db/data/transaction/commit
