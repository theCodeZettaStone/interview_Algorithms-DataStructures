using System;
using System.Collections.Generic;
using System.Linq;

namespace AreTheseAnagrams
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            Console.Write("Enter string number 1: ");
            var inputString1 = Console.ReadLine();
            Console.WriteLine("Got it. Thanks!");
            Console.Write("Enter string number 2: ");
            var inputString2 = Console.ReadLine();
            Console.WriteLine(AreTheseAnagramsHashTables(inputString1, inputString2));
        }

        private static string AreTheseAnagramsHashTables(string s1, string s2)
        {
            var frequencyMap1 = new SortedDictionary<char, int>();
            var frequencyMap2 = new SortedDictionary<char, int>();
            if (s1.Length != s2.Length)
            {
                return "These are not anagrams";
            }
            else
            {
                foreach (var t in s1)
                {
                    if (frequencyMap1.ContainsKey(t))
                    {
                        frequencyMap1[t] += 1;
                    }
                    else
                    {
                        frequencyMap1[t] = 1;
                    }
                }
                Console.Write("{");
                for (int i = 0; i < frequencyMap1.Count; i++)
                {
                    Console.Write(i < frequencyMap1.Keys.Count - 1 ? "{0}: {1}, " : "{0}: {1}", frequencyMap1.Keys.ElementAt(i),
                        frequencyMap1[frequencyMap1.Keys.ElementAt(i)]);
                }
                Console.WriteLine("}");
                foreach (var t in s2)
                {
                    if (frequencyMap2.ContainsKey(t))
                    {
                        frequencyMap2[t] += 1;
                    }
                    else
                    {
                        frequencyMap2[t] = 1;
                    }
                }
                Console.Write("{");
                for (int i = 0; i < frequencyMap2.Count; i++)
                {
                    Console.Write(i < frequencyMap2.Keys.Count - 1 ? "{0}: {1}, " : "{0}: {1}", frequencyMap2.Keys.ElementAt(i),
                        frequencyMap2[frequencyMap2.Keys.ElementAt(i)]);
                }
                Console.WriteLine("}");
                if (s1.Any(chr => !frequencyMap2.ContainsKey(chr) || frequencyMap1[chr] != frequencyMap2[chr]))
                {
                    return "These are not anagrams";
                }
            }
            return "These are anagrams";
        } 
    }
}
