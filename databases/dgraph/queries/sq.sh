QUERY="{
	me(id: m.06pj8) {
		type.object.name.en
		film.director.film  {
		    film.film.genre {
				type.object.name.en
			}
            type.object.name.en
            film.film.initial_release_date
		}
	}
}"
# -o /dev/null
curl -w 'Total: %{time_total}\n' -X POST \
-H "Content-Type: application/json" \
-d "$QUERY" \
http://127.0.0.1:8080/query
