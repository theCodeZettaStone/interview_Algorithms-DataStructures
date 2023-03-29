var start: Int = 1;
let foo: Int = 5;
let Foo: String = "Foo";
let bar: Int = 7;
let Bar: String = "Bar";
let stop: Int = 100;

for num in start...stop
    {
        if (num % foo == 0 && num % bar == 0)
            {
                print("\(Foo)\(Bar)");
            }
        else if (num % foo == 0)
            {
                print(Foo);
            }
        else if (num % bar == 0)
            {
                print(Bar);
            }
        else
            {
                print(num);
            }
    }
