package main

import (
	"strings"

	"golang.org/x/tour/wc"
)

func wordCount(s string) map[string]int {
	words := strings.Fields(s)
	wordCount := make(map[string]int)
	for i := range words {
		wordCount[words[i]]++
	}

	return wordCount
}

func main() {
	// a := WordCount("I am learning go")
	wc.Test(wordCount)

}
