# graphdb-benchmarks
Benchmark tests for various graph databases 
**Note :** Please ensure you have [Git LFS](https://git-lfs.github.com/) installed, before you clone this repository.



# Installation
## Versions
Dgraph: v1.0.9

Cayley: v0.7.4

Neo4J: v3.4.9

## Dataset
We are using this dataset [this](https://github.com/dgraph-io/benchmarks/tree/master/data/neo4j) which is a subset of this dataset [link](https://github.com/dgraph-io/benchmarks/tree/master/data)
## Loading


#### Loading dataset

| DGraph | Cayley |
| ------ | ------ |
| ------ | ---    |


## Querying (Based on Dgraph benchmarks [here](https://blog.dgraph.io/post/benchmark-neo4j/))
| ID    | DETAIL        |
| ------|:-------------:|
|SQ     | Get all films and genres of films directed by Steven Spielberg.|
|GS1Q	|Search for directors with name Steven Spielberg and get their films sorted by release date.|
|GS2Q	|Search for directors with name Steven Spielberg and only their films released after 1984-08 sorted by release date.|
|GS3Q	|Search for directors with name Steven Spielberg and only their movies released between 1984-08 and 2000 sorted by release date.|


#### SQ

| DGraph  | Cayley | Neo4J  |
| ------- | ------ | ------ |
| ------- | ------ | ------ |
#### GS1Q
| DGraph  | Cayley | Neo4J  |
| ------- | ------ | ------ |
| ------- | ------ | ------ |
#### GS2Q
| DGraph  | Cayley | Neo4J  |
| ------- | ------ | ------ |
| ------- | ------ | ------ |
#### GS3Q
| DGraph  | Cayley | Neo4J  |
| ------- | ------ | ------ |
| ------- | ------ | ------ |