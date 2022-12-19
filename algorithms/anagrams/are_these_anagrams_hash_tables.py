def main():
    string_input1: str = input("Enter string number 1: ")
    print("Got it. Thanks!")
    string_input2: str = input("Enter string number 2: ")
    print(are_these_anagrams_hash_tables(string_input1, string_input2))


def are_these_anagrams_hash_tables(s1, s2):
    frequency_dictionary1 = {}
    frequency_dictionary2 = {}
    if len(s1) != len(s2):
        return "These are not anagrams"
    for i in s1:
        if i in frequency_dictionary1:
            frequency_dictionary1[i] += 1
        else:
            frequency_dictionary1[i] = 1
    print(dict(sorted(frequency_dictionary1.items())))
    for i in s2:
        if i in frequency_dictionary2:
            frequency_dictionary2[i] += 1
        else:
            frequency_dictionary2[i] = 1
    print(dict(sorted(frequency_dictionary2.items())))
    for key in frequency_dictionary1.keys():
        if key not in frequency_dictionary2.keys() or frequency_dictionary1[key] != frequency_dictionary2[key]:
            return "These are not anagrams"
        return "These are anagrams"


if __name__ == "__main__":
    main()
