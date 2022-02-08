//-----------------------------------------------------------------------------------------
// EXAMPLE
//
//	find / | go run sample.go -t 0.002
//
// COMPILE TO NATIVE
//
//	# this will embed everything, as of 2020
//	go build helloworld.go
//
// DATE
//
//	2022 Feb 7
//

//-----------------------------------------------------------------------------------------

package main

import (
	"bufio"
	"fmt"
// 	"github.com/pborman/getopt"
	"github.com/pborman/getopt/v2"
	"io"
	"log"
	"os"
	"strings"
    "math/rand"
)

var counts = make(map[string]int)

// golang MUST have a main function (unlike python)
func main() {

	///
	/// 5) CLI options
	///
	timeout := 10.0
	getopt.FlagLong(&timeout, "timeout", 't', "some timeout")
	// optName := getopt.StringLong("percent", 'p', "", "Your name")
	optHelp := getopt.BoolLong("help", 0, "Help")
	getopt.Parse()

	if *optHelp {
		getopt.Usage()
		os.Exit(0)
	}
// 	fmt.Println("Hello " + *optName)

	///
	/// 1) Loop over stdin
	///
	in := bufio.NewReader(os.Stdin)
	for {
		s, err := in.ReadString('\n')
		if err != nil {
			// io.EOF is expected, anything else
			// should be handled/reported
			if err != io.EOF {
				log.Fatal(err)
			}
			break
		}
		// Do something with the line of text
		// in string variable s.
		_ = s
		p := strings.TrimSpace(s)

		if rand.Float64() * 100 < timeout {
			fmt.Print(p, "\n")
		}
	}
}
