#include <stdio.h>
#include <stdlib.h>
#include <string.h>


char* areTheseAnagramsHashTables(char* s1, char* s2);

int main() {
    char inputString1[42], inputString2[42];
    int verdict;
    printf("Enter string number 1: ");
    scanf("%s", inputString1);
    printf("Got it. Thanks!\n");
    printf("Enter string number 2: ");
    scanf("%s", inputString2);
    printf("%s\n", areTheseAnagramsHashTables(inputString1, inputString2));
    return 0;
}

char* areTheseAnagramsHashTables(char* s1, char* s2) {
    size_t s1Length = strlen(s1);
    size_t s2Length = strlen(s2);

    int frequencyCount1[42] = {0}, frequencyCount2[42] = {0};
    if (s1Length != s2Length) {
        return "These are not anagrams";
    } else {
        for (int i = 0; s1[i] != '\0'; i++) {
            frequencyCount1[s1[i]-'a']++;
        }
        for (int i = 0; s2[i] != '\0'; i++) {
            frequencyCount2[s2[i]-'a']++;
        }
    }
    for (int i =0; i <= s1Length; i++) {
        if (frequencyCount1[i] != frequencyCount2[i]) {
            return "These are not anagrams";
        }
    }
    return "These are anagrams";
}
