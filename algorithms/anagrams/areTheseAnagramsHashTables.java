import java.util.*;

class Algorithm {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);
        System.out.print("Enter string number 1: ");
        String inputString1 = userInput.nextLine();
        System.out.print("Enter string number 2: ");
        String inputString2 = userInput.nextLine();
        System.out.println(areTheseAnagramsHashTables(inputString1, inputString2));
    }
    public static String areTheseAnagramsHashTables(String s1, String s2) {
        HashMap<Character, Integer> frequencyMap1;
        HashMap<Character, Integer> frequencyMap2 = new HashMap<>();
        if (s1.length() != s2.length()) {
            return "These are not anagrams";
        } else {
            frequencyMap1 = new HashMap<>();

            for (Character chA : s1.toCharArray()) {
                if (frequencyMap1.containsKey(chA)) {
                    frequencyMap1.put(chA, frequencyMap1.get(chA) + 1);
                } else {
                    frequencyMap1.put(chA, 1);
                }
            }
            Map<Character, Integer> sortedFrequencyMap1 = new TreeMap<>(frequencyMap1);
            System.out.println(sortedFrequencyMap1);
            for (Character chB : s2.toCharArray()) {
                if (frequencyMap2.containsKey(chB)) {
                    frequencyMap2.put(chB, frequencyMap2.get(chB) + 1);
                } else {
                    frequencyMap2.put(chB, 1);
                }
            }
            Map<Character, Integer> sortedFrequencyMap2 = new TreeMap<>(frequencyMap2);
            System.out.println(sortedFrequencyMap2);
        }
        for (Character chA : s1.toCharArray()) {
            if (!frequencyMap2.containsKey(chA) || !Objects.equals(frequencyMap1.get(chA), frequencyMap2.get(chA))) {
                return "These are not anagrams";
            }
        }
        return "These are anagrams";
    }
}
