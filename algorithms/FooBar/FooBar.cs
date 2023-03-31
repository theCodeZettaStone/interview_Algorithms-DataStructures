using System;
					
public class Program
{
	public static void Main()
	{
		int start, foo, bar, stop, num;
		string Foo, Bar;
		start = 1;
		foo = 5;
		bar = 7;
		stop = 100;
		Foo = "Foo";
		Bar = "Bar";
		for (num = start; num <= stop; num++)
		{
			if (num % foo == 0 && num % bar == 0)
			{
				Console.WriteLine(Foo + Bar);
			}
			else if (num % foo == 0)
			{
				Console.WriteLine(Foo);
			}
			else if (num % bar == 0)
			{
				Console.WriteLine(Bar);
			}
			else
			{
				Console.WriteLine(num);
			}
		}
	}
}
