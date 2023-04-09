let start: number, foo: number, bar: number, terminate: number, num: number, fooString: string, barString: string;

start = 1;
foo = 5;
bar = 7;
terminate = 100;
fooString = "Foo";
barString = "Bar";

for (num = start; num <= terminate; num++) {
    if (num % foo == 0 && num % bar == 0) {
        console.log(fooString + barString);
    } else if (num % foo == 0) {
        console.log(fooString);
    } else if (num % bar == 0) {
        console.log(barString);
    } else {
        console.log(num);
    }
}
