package main

import (
	"fmt"
	"golang.org/x/exp/maps"
)

func main() {
	fmt.Println("Enter string number 1: ")
	var stringInput1 string
	_, _ = fmt.Scan(&stringInput1)
	fmt.Println("Got it. Thanks!")
	fmt.Println("Enter string number 2: ")
	var stringInput2 string
	_, _ = fmt.Scan(&stringInput2)
	fmt.Println(areTheseAnagramsHashTables(stringInput1, stringInput2))
}

func areTheseAnagramsHashTables(s1, s2 string) string {
	var freq1 = map[string]int{}
	var freq2 = map[string]int{}
	if len(s1) != len(s2) {
		return "These are not anagrams"
	} else {
		for _, chr := range s1 {
			if _, found := freq1[string(chr)]; found {
				freq1[string(chr)] += 1
			} else {
				freq1[string(chr)] = 1
			}
		}
		fmt.Println(freq1)
		for _, chr := range s2 {
			if _, found := freq2[string(chr)]; found {
				freq2[string(chr)] += 1
			} else {
				freq2[string(chr)] = 1
			}
		}
		fmt.Println(freq2)
		for _, chr := range maps.Keys(freq1) {
			if _, found := freq2[chr]; found == false {
				return "These are not anagrams"
			} else if freq1[chr] != freq2[chr] {
				return "These are not anagrams"
			}
		}
		return "These are anagrams"
	}
}
