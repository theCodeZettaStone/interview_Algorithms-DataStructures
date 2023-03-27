#include <stdio.h>

int main(void)
    {
        int start, foo, bar, stop;
        foo = 5;
        bar = 7;
        stop = 100;

        for (start = 1; start <=stop; start++)
            {
                if (start % foo == 0 && start % bar == 0)
                    {
                        printf("FooBar\n");
                    }
                else if (start % foo == 0)
                    {
                        printf("Foo\n");
                    }
                else if (start % bar == 0)
                    {
                      printf("Bar\n");
                    }
                else
                    {
                      printf("%d\n", start);
                    }
            }
        return 0;
    }
int main();
