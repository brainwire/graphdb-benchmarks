/*
 * Copyright 2017 Ankur Yadav (ankurayadav@gmail.com)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * 		http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"os/exec"
	"strings"
)

var (
	dbName		= flag.String("db", "", "Database on which to run benchmark tests. (dgraph or cayley)")
	bench 		= flag.String("bench", "", "Which type of functions to benchmark. (dataimport or queries)")
	dataDir 	= flag.String("datadir", "", "data directory get stored")
	datasetDir 	= flag.String("datasetdir", "", "dataset directory")
)

func main() {

	flag.Parse()

	var pckgDir string
	var benchRegex string
	var found bool

	databases := make(map[string]string)
	databases["dgraph"] = "./databases/dgraph/"
	databases["cayley"] = "./databases/cayley/"

	benchmarks := make(map[string]string)
	benchmarks["import"] = "BenchmarkImportDataToDB"
	benchmarks["query"] = "BenchmarkQuery*"

	pckgDir, found = databases[*dbName]
	if found == false {
		log.Fatal("Please choose a valid database")
		log.Fatal(pckgDir)
	}
	
	benchRegex, found = benchmarks[*bench]
	if found == false {
		log.Fatal("Please choose a valid benchmark")
	}

	fmt.Printf("Testing %s for '%s' benchmark\n", *dbName, benchRegex)
	cmd := exec.Command("go", "test", "-timeout", "4h", pckgDir, "-bench", benchRegex, "-args", "-datadir", *dataDir, "-datasetdir", *datasetDir)

	printCommand(cmd)
	output, err := cmd.CombinedOutput()
	printError(err)
	printOutput(output)

}

func printCommand(cmd *exec.Cmd) {
	fmt.Printf("==> Executing: %s\n", strings.Join(cmd.Args, " "))
}

func printError(err error) {
	if err != nil {
		os.Stderr.WriteString(fmt.Sprintf("==> Error: %s\n", err.Error()))
	}
}

func printOutput(outs []byte) {
	if len(outs) > 0 {
		fmt.Printf("==> Output: %s\n", string(outs))
	}
}
