const inputPrompt: Function = require('prompt-sync')();


function main(): void {
    const stringInput1: string = inputPrompt("Enter string number 1: ");
    console.log("Got it. Thanks!");
    const stringInput2: string = inputPrompt("Enter string number 2: ");
    console.log(areTheseAnagramsHashTables(stringInput1, stringInput2));
}


function sortObjectByKeys(o) {
    // noinspection CommaExpressionJS
    return Object.keys(o).sort().reduce((r, k) => (r[k] = o[k], r), new Map<string, number>);
}


function areTheseAnagramsHashTables(s1: string, s2: string): string {
    const freq1: Map<string, number> = new Map();
    const freq2: Map<string, number> = new Map();

    if (s1.length !== s2.length) {
        return ("These are not anagrams");
    }
    else {
        for (const chr of s1) {
            if (chr in freq1) {
                freq1[chr] += 1;
            }
            else {
                freq1[chr] = 1;
            }
        }
        const sortedfreq1: Map<string, number> = sortObjectByKeys(freq1);
        console.log(sortedfreq1);
        for (const chr of s2) {
            if (chr in freq2) {
                freq2[chr] += 1
            }
            else {
                freq2[chr] = 1
            }
        }
        const sortedfreq2: Map<string, number> = sortObjectByKeys(freq2);
        console.log(sortedfreq2);
        for (const key in freq1.keys) {
            if (!(key in freq2.keys) || freq1[key] !== freq2[key]) {
                return ("These are not anagrams");
            }
        }
        return ("These are anagrams");
    }
}

main();
