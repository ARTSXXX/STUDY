using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_First
{
    class Lab1
    {
        public static void Main(string[] argc)
        {
            Console.WriteLine("---Types---");

           

            int a = int.MaxValue;

            void Checked()
            {


                try
                {
                    
                    {
                        Console.WriteLine("---CHECKED---");
                        Console.WriteLine(a + 1);
                    }
                }
                catch (OverflowException e)
                {
                    Console.WriteLine(e.Message);  // output: Arithmetic operation resulted in an overflow.
                }
            }

            void UnChecked()
            {

               
                {
                    Console.WriteLine("---UNCHECKED---");
                    Console.WriteLine(a + 1);  // output: 0
                }
            }
            Checked();
            UnChecked();

        }


        void Compare(int[] numbers, string str)
        {
            Console.WriteLine("ФУНКЦИИ!");
            int numbersSum = 0;


            foreach (var number in numbers)
                numbersSum += number;

            (float, char) t1 = (numbersSum, str[0]);

            Console.WriteLine(t1.Item1 + " " + t1.Item2);

            var max = numbers.Max();
            Console.WriteLine(max);

        }

        int[] numbers = { 1, 2, 3, 4, 5 };


        string str = "Hello";






    }

}
