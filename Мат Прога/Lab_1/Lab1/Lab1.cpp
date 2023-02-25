#include "stdafx.h"
#include "Auxil.h"                            // вспомогательные функции 
#include <iostream>
#include <ctime>
#include <locale>
#define  CYCLE  1000000 // количество циклов  

int f(int n)
{
    if (n == 1 || n == 2)
        return 1;
    if (n == 0)
        return 0;
    return f(n - 1) + f(n - 2);
}
int main()
{
    double  av1 = 0, av2 = 0;
    clock_t  t1 = 0, t2 = 0;
    setlocale(LC_ALL, "rus");
    auxil::start();                          // старт генерации 
    for (int j = 1; j <= 10; j++) {
        t1 = clock();                            // фиксация времени 
        for (int i = 0; i < CYCLE*j; i++)
        {
            av1 += (double)auxil::iget(-100, 100); // сумма случайных чисел 
            av2 += auxil::dget(-100, 100);         // сумма случайных чисел 
        }
        t2 = clock();                            // фиксация времени 
        std::cout << std::endl << "количество циклов:         " << CYCLE*j;
        std::cout << std::endl << "среднее значение (default):    " << av1 / (CYCLE*j);
        std::cout << std::endl << "среднее значение (double): " << av2 / CYCLE;
        std::cout << std::endl << "продолжительность (у.е):   " << (t2 - t1);
        std::cout << std::endl << "                  (сек):   "
            << ((double)(t2 - t1)) / ((double)CLOCKS_PER_SEC);
        std::cout << std::endl;
    }
    std::cout << f(15) << std::endl;
    system("pause");
    return 0;
}