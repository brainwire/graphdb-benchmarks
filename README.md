# graphdb-benchmarks
Benchmark tests for various graph databases based on [ankurayadav's work](https://github.com/ankurayadav/graphdb-benchmarks)

**Note :** Please ensure you have [Git LFS](https://git-lfs.github.com/) installed, before you clone this repository.

**Note :** These results are a bit outdated, I am working on new results.

## Loading
#### Loading 30kmoviedata dataset

| DGraph        | Cayley        |
| ------------- |:-------------:|
| 4.745s        | 30.035s       |


#### Loading 21million.rdf.gz dataset

| DGraph        | Cayley        |
| ------------- |:-------------:|
| 879.913s      | 8527.427s     |

## Querying

#### Query to find all movies and their genre which are directed by director "Steven Spielberg".

| DGraph        | Cayley        |
| ------------- |:-------------:|
| 2.067s        | 1.376s        |
