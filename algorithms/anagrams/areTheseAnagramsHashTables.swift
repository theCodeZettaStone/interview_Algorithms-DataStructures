@main
public struct theCodeZettaStone {
   public static func main() {
        print("Enter string number 1: ", terminator: "")
        let inputString1: String? = readLine()
        print("Got it. Thanks!")
        print("Enter string number 2: ", terminator: "")
        let inputString2: String? = readLine()
        print(this(inputString1, inputString2))
    }
}

func this(_ s1: String?, _ s2: String?) -> String {
    var frequencyDictionary1: [Character: Int] = [:]
    var frequencyDictionary2: [Character: Int] = [:]
    if s1?.count != s2?.count {
        return "These are not anagrams"
    } else {
        s1?.forEach({ chr in
            if frequencyDictionary1[chr] == nil {
                frequencyDictionary1[chr] = 1
            } else {
                frequencyDictionary1[chr]? += 1
            }
        })
        var counter = 0
        print("[", terminator: "")
        for chr: Character in frequencyDictionary1.keys.sorted() {
            counter += 1
            if counter < frequencyDictionary1.count {
                print("\(chr): \(frequencyDictionary1[chr]!), ", terminator: "")
            } else {
                print("\(chr): \(frequencyDictionary1[chr]!)", terminator: "")
            }
        }
        print("]")
        s2?.forEach({ chr in
            if frequencyDictionary2[chr] == nil {
                frequencyDictionary2[chr] = 1
            } else {
                frequencyDictionary2[chr]? += 1
            }
        })
        counter = 0
        print("[", terminator: "")
        for chr: Character in frequencyDictionary2.keys.sorted() {
            counter += 1
            if counter < frequencyDictionary2.count {
                print("\(chr): \(frequencyDictionary2[chr]!), ", terminator: "")
            } else {
                print("\(chr): \(frequencyDictionary2[chr]!)", terminator: "")
            }
        }
        print("]")
    }
    for key in frequencyDictionary1.keys {
        if !frequencyDictionary2.keys.contains(key) || frequencyDictionary1[key] != frequencyDictionary2[key] {
            return "These are not anagrams"
        }
    }
    return "These are anagrams"
}
