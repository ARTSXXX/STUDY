// --- main 
#include <iostream>
#include <iomanip> 
#include "salesman.h"
#include "combi.h"
#include <ctime>
#define N 8
int main()
{
    setlocale(LC_ALL, "rus");
    clock_t t1, t2;
    int d[N][N] = { //0   1    2    3     4        
                  {  0,  45, INF,  25,   50},    //  0
                  { 45,   0,  55,  20,  100},    //  1
                  { 70,  20,   200,  10,   30},    //  2 
                  { 80,  10,  40,   0,   10},    //  3
                  { 30,  50,  20,  10,    300} };   //  4  
    int r[N];                     // результат 
    int s = salesman(
        N,          // [in]  количество городов 
        (int*)d,          // [in]  массив [n*n] расстояний 
        r           // [out] массив [n] маршрут 0 x x x x  

    );
    std::cout << std::endl << "-- Задача коммивояжера -- ";
    std::cout << std::endl << "-- количество  городов: " << N;
    std::cout << std::endl << "-- матрица расстояний : ";
    for (int i = 0; i < N; i++)
    {
        t1 = clock();
        std::cout << std::endl;
        for (int j = 0; j < N; j++)
           

            if (d[i][j] != INF) std::cout << std::setw(3) << d[i][j] << " ";

            else std::cout << std::setw(3) << "INF" << " ";

        t2 = clock();
    }
    std::cout << std::endl << "-- оптимальный маршрут: ";
    for (int i = 0; i < N; i++) std::cout << r[i] << "-->"; std::cout << 0;
    std::cout << std::endl << "-- длина маршрута     : " << s;
    std::cout << std::endl;

    std::cout << " TIME ::: "  << float(t2 - t1) << std::endl;
    system("pause");
    return 0;
}
