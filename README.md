# graphdb-benchmarks
Benchmark tests for various graph databases based on [ankurayadav's work](https://github.com/ankurayadav/graphdb-benchmarks)

**Note :** Please ensure you have [Git LFS](https://git-lfs.github.com/) installed, before you clone this repository.

# Specs
- Processor : i7 8750H
- RAM : 16G
- Hard drive : 512GB NVMe SSD

# Tested versions
- Cayley 0.7.4
- DGraph 1.0.9

# Installation

## DGraph 
Simply copy and paste their command line installer 
```
curl https://get.dgraph.io -sSf | bash
```

# Loading

#### Loading 21million.rdf.gz dataset

| DGraph        | Cayley        |
| ------------- |:-------------:|
| 138s          | 1438s         |

# Querying

#### Criteria 1

| DGraph        | Cayley        |
| ------------- |:-------------:|
| ------        | ------        |
