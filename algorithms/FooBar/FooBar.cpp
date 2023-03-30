#include <iostream>
#include <string>
using namespace std;
 
int main(void)
{
  int start, foo, bar, stop;
  start = 1;
  foo = 5;
  bar = 7;
  stop = 100;
  string Foo, Bar;
  Foo = "Foo";
  Bar = "Bar";
  
  for(int num = start; num <= stop; num++)
  {
    if (num % foo == 0 && num % bar == 0)
    {
      std::cout << (Foo + Bar) << "\n";
    }
    else if (num % foo == 0)
    {
      std::cout << Foo << "\n";
    }
    else if (num % bar == 0)
    {
      std::cout << Bar << "\n";
    }
    else
    {
      std::cout << num << "\n";
    }
  }
  return 0;
}
