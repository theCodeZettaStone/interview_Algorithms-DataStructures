def main
  puts "Enter string number 1: "
  input_string1 = gets
  print "Got it. Thanks!\n"
  puts "Enter string number 2: "
  input_string2 = gets
  print "\n" + are_these_anagrams_hash_tables(input_string1, input_string2)

end

def are_these_anagrams_hash_tables(s1, s2)
  frequency_map1 = {}
  frequency_map2 = {}

  if s1.length != s2.length
    "These are not anagrams"
  else
    chars = s1.split("")
    chars.each{ |c|
      if frequency_map1.include?(c)
        frequency_map1[c] += 1
      else
        frequency_map1[c] = 1
      end
      }
    frequency_map1.delete("\n")
    frequency_map1 = frequency_map1.sort.to_h
    print frequency_map1
    print "\n"
    chars = s2.split("")
    chars.each{ |c|
      if frequency_map2.include?(c)
        frequency_map2[c] += 1
      else
        frequency_map2[c] = 1
      end
    }
    frequency_map2.delete("\n")
    frequency_map2 = frequency_map2.sort.to_h
    print frequency_map2
    chars = s1.split("")
    chars.each{ |c|
      if frequency_map2[c] == false or frequency_map1[c] != frequency_map2[c]
        return "These ar not anagrams"
      end
  }
  "These are anagrams"
  end
end

main
