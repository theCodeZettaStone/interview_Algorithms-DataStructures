use std::{io};
use std::collections::btree_map::BTreeMap;


fn main() {
    println!("Enter string number 1: ");
    let mut input_string1: String = String::new();
    io::stdin().read_line(&mut input_string1).expect("Invalid input");
    println!("Thanks! Got it!");
    let mut input_string2: String = String::new();
    println!("Enter string number 2: ");
    io::stdin().read_line(&mut input_string2).expect("Invalid input");
    println!("{}", are_these_anagrams_hash_tables(input_string1, input_string2));
}


fn are_these_anagrams_hash_tables(s1:String, s2:String) -> String {
    let mut frequency_map1:BTreeMap<String, u32> = BTreeMap::new();
    let mut frequency_map2:BTreeMap<String, u32> = BTreeMap::new();
    if frequency_map1.len() != frequency_map2.len() {
        return "These are not anagrams".to_string();
    } else {
        for chr in s1.chars() {
            let character: String = chr.to_string();
            if frequency_map1.contains_key(&character) {
                *frequency_map1.get_mut(&character).unwrap() += 1;
            } else {
                frequency_map1.insert(character, 1);
            }
        }
        frequency_map1.remove("\n");
        println!("{:?}", frequency_map1);
        for chr in s2.chars() {
            let character: String = chr.to_string();
            if frequency_map2.contains_key(&character) {
                *frequency_map2.get_mut(&character).unwrap() += 1;
            } else {
                frequency_map2.insert(character, 1);
            }
        }
        frequency_map2.remove("\n");
        println!("{:?}", frequency_map2);
    }
    for (k, _) in &frequency_map1 {
        if !frequency_map2.contains_key(k) || frequency_map1[k] != frequency_map2[k] {
            return "These are not anagrams".to_string();
        }
    }
    return "These are anagrams".to_string();
}
