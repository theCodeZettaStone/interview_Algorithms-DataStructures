fun main() {
    print("Enter string number 1: ")
    val stringInput1: String = readLine()!!
    println("Got it. Thanks!")
    print("Enter string number 2: ")
    val stringInput2: String = readLine()!!
    println(areTheseAnagramsHashTables(stringInput1, stringInput2))
}

fun areTheseAnagramsHashTables(s1: String, s2: String): String {
    val frequencyMap1 = mutableMapOf<Char, Int>()
    val frequencyMap2 = mutableMapOf<Char, Int>()
    if (s1.length != s2.length) {
        return ("These are not anagrams")
    }
    else {
        for (chA: Char in s1) {
            if (chA in frequencyMap1) {
                frequencyMap1.merge(chA, 1, Int::plus)
            }
            else {
                frequencyMap1[chA] = 1
            }
        }
        println(frequencyMap1.toList().sortedBy { (key, _) -> key }.toMap())
        for (chB: Char in s2) {
            if (chB in freq2) {
                frequencyMap2.merge(chB, 1, Int::plus)
            }
            else {
                frequencyMap2[chB] = 1
            }
        }
        println(frequencyMap2.toList().sortedBy { (key, _) -> key }.toMap())
        for (key: Char in frequencyMap1.keys) {
            if (key !in frequencyMap2.keys || frequencyMap1[key] != frequencyMap2[key]) {
                return "These are not anagrams"
            }
        }
        return "These are anagrams"
    }
}
