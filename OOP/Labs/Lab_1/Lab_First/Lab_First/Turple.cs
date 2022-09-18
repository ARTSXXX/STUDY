using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_First
{
    class Turple
    {

        public static void PrintTurple()
        {
            Console.WriteLine();
            Console.WriteLine();
            (double, int, string, char, ulong) t1 = (4.5, 3, "Hi Hello Hey", 'P', 2004);
            Console.WriteLine($"Tuple with elements {t1.Item1} and {t1.Item2}.");
            Console.WriteLine(t1);

            // Распоковать в переменные
            (var name, var betta) = ("Hey", 456);
            Console.WriteLine($"{name} {betta}");

            // Сравнить два кортежа
            var tuple1 = (23, 36);
            var tuple2 = (17, 31);

            Console.WriteLine(tuple1 == tuple2);
            Console.WriteLine(tuple1 != tuple2);


            //Выполните распаковку кортежа в переменные
            Console.WriteLine("\n" + "Распаковка кортежа");
            var (first_1, second_1, three_1, four_1, five_1) = t1;
            Console.WriteLine(first_1);
            Console.WriteLine(second_1);
            Console.WriteLine(three_1);
            Console.WriteLine(four_1);
            Console.WriteLine(five_1);



            //Продемонстрируйте различные способы распаковки кортежа. Продемонстрируйте использование переменной(_).
            Console.WriteLine("\n" + "Использование переменной(_)");
            var (f_1, _, _, _, _) = t1;
            Console.WriteLine(f_1);


            int a = int.MaxValue;


        }

    }
}
