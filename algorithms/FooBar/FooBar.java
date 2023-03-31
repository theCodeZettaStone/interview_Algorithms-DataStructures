public class FooBar
{
    public static void main(String[] args) {
        int start, foo, bar, stop, num;
		start = 1;
        foo = 5;
        bar = 7;
        stop = 100;
        String Foo, Bar;
        Foo = "Foo";
        Bar = "Bar";

        for (num = start; num <= stop; num++)
        {
            if (num % foo == 0 && num % bar == 0)
            {
                System.out.println(Foo + Bar);
            }
            else if (num % foo == 0)
            {
                System.out.println(Foo);
            }
            else if (num % bar == 0)
            {
                System.out.println(Bar);
            }
            else
            {
                System.out.println(num);
            }
        }
	}
}
