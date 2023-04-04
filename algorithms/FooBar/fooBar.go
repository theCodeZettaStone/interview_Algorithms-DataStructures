package main

import("fmt")

func main() {
	start, foo, bar, stop, num := 1, 5, 7, 100, 0;
	fooString, barString := "Foo", "Bar";
	for num = start; num <= stop; num++ {
		if num % foo == 0 && num % bar == 0 {
			fmt.Printf(fooString + barString + "\n");
		} else if num % foo == 0 {
			fmt.Printf(fooString + "\n");
		} else if num % bar == 0 {
			fmt.Printf(barString + "\n");
		} else {
			fmt.Printf("%d\n", num);
		}
	}
}
