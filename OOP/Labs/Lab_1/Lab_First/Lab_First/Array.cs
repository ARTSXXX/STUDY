using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_First
{
    class Array
    {

        public static void PrintArray()
        {
            /*Создайте целый двумерный массив и выведите его на консоль в
        отформатированном виде (матрица). */
           
                int[,] array = 
                {
            {123,222,333 },
            {444,555,666 },
            {555,666,777 }
                };


                // Вывод массива
                int rows = array.GetLength(0);
                int cols = array.GetLength(1);

                for (int i = 0; i < rows; i++)
                {
                    for (int j = 0; j < cols; j++)
                    {
                        Console.Write($"{array[i, j]}\t");
                    }
                    Console.WriteLine("");
                }


                // Одномерный массив строк 
                string[] array_2 = new string[] { "Give", "Me", "U", "Money", "Man" };


                for (int i = 0; i < array_2.Length; i++)
                {
                    Console.Write("{Zero_EL} ", array_2[i]);
                }

                Console.WriteLine();

                Console.WriteLine("Длина массива: {0}", array_2.Length);

                Console.WriteLine("Введите номер элемента массива:");

                int index = int.Parse(Console.ReadLine());

                Console.WriteLine("Введите новое значение элемента массива:");

                string value = Console.ReadLine();

                array_2[index] = value;

                Console.WriteLine("Массив после изменения:");

                for (int i = 0; i < array_2.Length; i++)
                {
                    Console.Write("{0} ", array_2[i]);
                }

                /*Создайте ступечатый (не выровненный) массив вещественных
                чисел с 3-мя строками, в каждой из которых 2, 3 и 4 столбцов
                соответственно. Значения массива введите с консоли cтупенчатй массив*/

                float[][] arrays = new float[3][];
                arrays[0] = new float[2];
                arrays[1] = new float[3];
                arrays[2] = new float[4];

                //for (int i = 0; i < arrays.Length; i++)
                //{
                //    for (int j = 0; j < arrays[i].Length; j++)
                //    {
                //        Console.WriteLine("Введите значение элемента массива ", i, j);
                //        arrays[i][j] = float.Parse(Console.ReadLine());
                //    }
                //}



                // Неявно типизированные переменные для хранения массива и строки 

                var array_3 = new[] { 1, 2, 3, 4, 5 };
                var str = "Hello";

                for (int i = 0; i < array_3.Length; i++)
                {
                    Console.Write("{0} ", array_3[i]);
                }


                for (int i = 0; i < str.Length; i++)
                {
                    Console.Write(str[i]);
                }

            }
        }

    
}
