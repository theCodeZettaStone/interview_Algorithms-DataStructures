fun main()
{
    var start: Int;
    val foo: Int = 5;
    val bar: Int = 7;
    var stop: Int;
    val fooString: String = "Foo";
    val barString: String = "Bar";
    start = 1;
    stop = 100;
    
    for (num in start..stop)
    {
        if (num % foo == 0 && num % bar == 0)
        {
            println(fooString + barString);
        }
        else if (num % foo == 0)
        {
            println(fooString)
        }
        else if (num % bar == 0)
        {
            println(barString)
        }
        else
        {
            println(num);
        }
    }
}
