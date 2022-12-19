const prompt = require('prompt-sync')();


function main() {
  const stringInput1 = prompt("Enter string number 1: ")
  console.log("Got it. Thanks!")
  const stringInput2 = prompt("Enter string number 2: ")
  console.log(areTheseAnagramsHashTables(stringInput1, stringInput2))
}


function sortObjectByKeys(o) {
  return Object.keys(o).sort().reduce((r, k) => (r[k] = o[k], r), {});
}


function areTheseAnagramsHashTables(s1, s2) {
  const frequencyMap1 = new Map()
  const frequencyMap2 = new Map()

  if (s1.length !== s2.length) {
    return ("These are not anagrams")
  }
  else {
    for (const chr of s1) {
      if (chr in frequencyMap1) {
        frequencyMap1[chr] += 1
      }
      else {
        frequencyMap1[chr] = 1
      }
    }
    const sortedfrequencyMap1 = sortObjectByKeys(frequencyMap1)
    console.log(sortedfrequencyMap1)
    for (const chr of s2) {
      if (chr in frequencyMap2) {
        frequencyMap2[chr] += 1
      }
      else {
        frequencyMap2[chr] = 1
      }
    }
    const sortedfrequencyMap2 = sortObjectByKeys(frequencyMap2)
    console.log(sortedfrequencyMap2)
    for (const key in frequenceMap1.keys) {
      if (!(key in frequencyMap2.keys) || frequencyMap1[key] !== frequencyMap2[key]) {
        return ("These are not anagrams")
      }
    }
    return ("These are anagrams")
  }
}


main()
