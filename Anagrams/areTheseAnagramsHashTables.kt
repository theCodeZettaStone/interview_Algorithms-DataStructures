fun main() {
    print("Enter string number 1: ")
    val stringInput1: String = readLine()!!
    println("Got it. Thanks!")
    print("Enter string number 2: ")
    val stringInput2: String = readLine()!!
    println(areTheseAnagramsHashTables(stringInput1, stringInput2))
}

fun areTheseAnagramsHashTables(s1: String, s2: String): String {
    val freq1 = mutableMapOf<Char, Int>()
    val freq2 = mutableMapOf<Char, Int>()
    if (s1.length != s2.length) {
        return ("These are not anagrams")
    }
    else {
        for (chA: Char in s1) {
            if (chA in freq1) {
                freq1.merge(chA, 1, Int::plus)
            }
            else {
                freq1[chA] = 1
            }
        }
        println(freq1.toList().sortedBy { (key, _) -> key }.toMap())
        for (chB: Char in s2) {
            if (chB in freq2) {
                freq2.merge(chB, 1, Int::plus)
            }
            else {
                freq2[chB] = 1
            }
        }
        println(freq2.toList().sortedBy { (key, _) -> key }.toMap())
        for (key: Char in freq1.keys) {
            if (key !in freq2.keys || freq1[key] != freq2[key]) {
                return "These are not anagrams"
            }
        }
        return "These are anagrams"
    }
}
