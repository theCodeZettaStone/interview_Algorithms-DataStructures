#include <stdio.h>

int main(void)
    {
        int start, foo, bar, stop;
        char Foo[4] = "Foo";
        char Bar[4] = "Bar";
        foo = 5;
        bar = 7;
        stop = 100;

        for (start = 1; start <=stop; start++)
            {
                if (start % foo == 0 && start % bar == 0)
                    {
                        printf("%s%s\n", Foo, Bar);
                    }
                else if (start % foo == 0)
                    {
                        printf("%s\n", Foo);
                    }
                else if (start % bar == 0)
                    {
                      printf("%s\n", Bar);
                    }
                else
                    {
                      printf("%d\n", start);
                    }
            }
        return 0;
    }
int main();
