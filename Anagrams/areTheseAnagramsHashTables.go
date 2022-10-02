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
	var frequencyMap1 = map[string]int{}
	var frequencyMap2 = map[string]int{}
	if len(s1) != len(s2) {
		return "These are not anagrams"
	} else {
		for _, chr := range s1 {
			if _, found := frequencyMap1[string(chr)]; found {
				frequencyMap1[string(chr)] += 1
			} else {
				frequencyMap1[string(chr)] = 1
			}
		}
		fmt.Println(frequencyMap1)
		for _, chr := range s2 {
			if _, found := frequencyMap2[string(chr)]; found {
				frequencyMap2[string(chr)] += 1
			} else {
				frequencyMap2[string(chr)] = 1
			}
		}
		fmt.Println(frequencyMap2)
		for _, chr := range maps.Keys(frequencyMap1) {
			if _, found := frequencyMap2[chr]; found == false {
				return "These are not anagrams"
			} else if frequencyMap1[chr] != frequencyMap2[chr] {
				return "These are not anagrams"
			}
		}
		return "These are anagrams"
	}
}
