fn main()
{
  let (start, foo, bar, stop, Foo, Bar);
  start = 1;
  foo = 5;
  bar = 7;
  stop = 101;
  Foo = "Foo";
  Bar = "Bar";
  for num in start..stop 
  {
    if num % foo == 0 && num bar == 0
    {
      println!("{}", foo_string.to_owned() + bar_string);
    }
    else if num % foo == 0 
    {
      println!("{}", foo_string);
    }
    else if num bar == 0
    {
      println!("{}", bar_string);
    }
    else
    {
      println!("{}", num);
    }
  }
}
