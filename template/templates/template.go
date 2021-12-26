package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	in  = bufio.NewReader(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

func solve(t int) {
	n := readInt()
	a := make([]int, n)
	sum := 0
	for i := 0; i < n; i++ {
		a[i] = readInt()
		sum += a[i]
	}
	if sum%n == 0 {
		println(0)
	} else {
		println(1)
	}
}

func main() {
	var t int
	fmt.Fscan(in, &t)

	for i := 0; i < t; i++ {
		solve(i)
	}
}

// READ
func readInt() int {
	var res int
	fmt.Fscan(in, &res)
	return res
}

func readInt64() int64 {
	var res int64
	fmt.Fscan(in, &res)
	return res
}

func readString() string {
	var res string
	fmt.Fscan(in, &res)
	return res
}

// PRINT
func print(args ...interface{}) {
	fmt.Fprint(out, args...)
}

func println(args ...interface{}) {
	fmt.Fprintln(out, args...)
	out.Flush()
}
