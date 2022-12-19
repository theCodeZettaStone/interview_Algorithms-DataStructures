#include <iostream>
#include <map>
#include <iterator>
using namespace std;

string areTheseAnagramsHashTables(const string& s1, const string& s2) {
    map<char, int> frequencyMap1;
    map<char, int> frequencyMap2;

    if (s1.length() != s2.length()) {
        return "These are not anagrams";
    } else {
        for (char c: s1) {
            if (frequencyMap1.count(c)) {
                frequencyMap1[c]++;
            } else {
                frequencyMap1[c] = 1;
            }
        }
        cout << "{";
        int counter = 0;
        for (const auto &[key, value]: frequencyMap1) {
            counter++;
            if (counter < frequencyMap1.size()) {
                printf("\"%c\": %d, ", key, value);
            } else
                printf("\"%c\": %d", key, value);
        }
        cout << "}" << endl;
        for (char c: s2) {
            if (frequencyMap2.count(c)) {
                frequencyMap2[c]++;
            } else {
                frequencyMap2[c] = 1;
            }
        }
        cout << "{";
        counter = 0;
        for (const auto &[key, value]: frequencyMap2) {
            counter++;
            if (counter < frequencyMap2.size()) {
                printf("\"%c\": %d, ", key, value);
            } else
                printf("\"%c\": %d", key, value);
        }
        cout << "}" << endl;
    }
    for (char c: s1) {
        if (!frequencyMap2.count(c) || frequencyMap1[c] != frequencyMap2[c]) {
            return "These are not anagrams";
        }
    }
    return "These are anagrams";
}

int main() {
    cout << "Enter string number 1: ";
    string inputString1, inputString2;
    cin >> inputString1;
    cout << "Got it. Thanks" << endl;
    cout << "Enter string number 2: ";
    cin >> inputString2;
    cout << areTheseAnagramsHashTables(inputString1, inputString2) << endl;
    return 0;
}
