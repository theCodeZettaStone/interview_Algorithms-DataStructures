import "dart:io";
import 'dart:collection';


void main() {
  print("Enter string number 1: ");
  String? stringInput1 = stdin.readLineSync();
  print("Got it. Thanks!");
  print("Enter string number 2: ");
  String? stringInput2 = stdin.readLineSync();
  print(areTheseAnagramsHashTables(stringInput1, stringInput2));
}

String? areTheseAnagramsHashTables(s1, s2) {
  var frequencyMap1 = new SplayTreeMap<String, int>();
  var frequencyMap2 = new SplayTreeMap<String, int>();

   if (s1.length != s2.length) {
     return ('These are not anagrams');
   } else {
     for (int i=0; i < s1.length; i++) {
       var chr = s1[i];
       if (frequencyMap1.containsKey(chr)) {
         frequencyMap1[chr] = (frequencyMap1[chr])! + 1;
       } else {
         frequencyMap1[chr] = 1;
       }
     }
       print(frequencyMap1);
       for (int i=0; i < s2.length; i++) {
         var chr = s2[i];
         if (frequencyMap2.containsKey(chr)) {
           frequencyMap2[chr] = (frequencyMap2[chr])! + 1;
         } else {
           frequencyMap2[chr] = 1;
         }
       }
       print(frequencyMap2);
     }
   for (int i=0; i < frequencyMap1.entries.length; i++) {
     MapEntry e = frequencyMap1.entries.elementAt(i);
     if (frequencyMap2.containsKey(e.key) == false ||
         frequencyMap1[e.key] != frequencyMap2[e.key]) {
       return ("These are not anagrams");
     }
   }
   return ("These are anagrams");
}
