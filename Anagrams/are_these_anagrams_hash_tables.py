def main():
    string_input1: str = input("Enter string number 1: ")
    print("Got it. Thanks!")
    string_input2: str = input("Enter string number 2: ")
    print(are_these_anagrams_hash_tables(string_input1, string_input2))


def are_these_anagrams_hash_tables(s1, s2):
    freq1 = {}
    freq2 = {}
    if len(s1) != len(s2):
        return "These are not anagrams"
    for i in s1:
        if i in freq1:
            freq1[i] += 1
        else:
            freq1[i] = 1
    print(dict(sorted(freq1.items())))
    for i in s2:
        if i in freq2:
            freq2[i] += 1
        else:
            freq2[i] = 1
    print(dict(sorted(freq2.items())))
    for key in freq1.keys():
        if key not in freq2.keys() or freq1[key] != freq2[key]:
            return "These are not anagrams"
        return "These are anagrams"


if __name__ == "__main__":
    main()
