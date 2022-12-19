prompt = require 'prompt-sync'
input = prompt()
input_string1 = input("Enter string number 1: ")
console.log("Got it. Thanks!")
input_string2 = input("Enter string number 2: ")


are_these_anagrams_hash_tables = (s1, s2) ->
  if s1.length != s2.length
    return "These are not anagrams"
  frequency_map1 = {}
  frequency_map2 = {}
  for chr in s1
    if frequency_map1[chr]?
      frequency_map1[chr] = frequency_map1[chr] + 1
    else
      frequency_map1[chr] = 1
  sorted_map = Object.keys(frequency_map1).sort().reduce((r, k) ->
    r[k] = frequency_map1[k]
    r
  , {})
  console.log(sorted_map)
  for chr in s2
    if frequency_map2[chr]?
      frequency_map2[chr] = frequency_map2[chr] + 1
    else
      frequency_map2[chr] = 1
  sorted_map = Object.keys(frequency_map2).sort().reduce((r, k) ->
    r[k] = frequency_map2[k]
    r
  , {})
  console.log(sorted_map)
  for chr in input_string1
    if !frequency_map2[chr] or frequency_map1[chr] != frequency_map2[chr]
      return "These are not anagrams"
  return "These are anagrams"


console.log(are_these_anagrams_hash_tables input_string1, input_string2)
