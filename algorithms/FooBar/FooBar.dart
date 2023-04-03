void main()
{
  int start, foo, bar, stop, num;
  String foo_string, bar_string;
  start = 1;
  foo = 5;
  bar = 7;
  stop = 100;
  foo_string = "Foo";
  bar_string = "Bar";

  for (num = start; num <= stop; num++)
  {
    if (num % foo == 0 && num % bar == 0)
    {
      print(foo_string + bar_string);
    }
    else if (num % foo == 0)
    {
      print(foo_string);
    }
    else if (num % bar == 0)
    {
      print(bar_string);
    }
    else
    {
      print(num);
    }
  }
}
