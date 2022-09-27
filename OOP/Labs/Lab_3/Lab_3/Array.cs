using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    class Array
    {


        #region Fields
        private int[] array = {1,2,3};
        private int Length = 5;

        #endregion

        #region Constructor
        public Array(int length)
        {
            this.Length = Length;
            array = new int[Length];
            Console.WriteLine(Length);

        }
        #endregion

        #region Методы
        public void Print()
        {
            for (int i = 0; i < Length; i++)
            {
                array[i] = i + i;
                Console.Write(array[i] + " ");
            }
        }
        #endregion

        #region Индексаторы

        public int this[int index] {

            set
            {
                array[index] = value;
            }
            get
            {
                return array[index];
            }

        }


        #endregion

        #region Перегрузки

       
        
        public static Array operator *(Array arr_1, Array arr_2)
        {
            Array arr_3 = new Array(arr_1.Length);
            for (int i = 0; i <= arr_1.Length; i++)
            {

                arr_3.array[i] = arr_1.array[i] * arr_2.array[i];
               

            }
            return arr_3;
        }

        public static bool operator true(Array array)
        {
            Array array1 = new Array(array.Length);
            bool result = true;
            foreach (var item in array1.array)
            {
                if (item <= 0 )
                {
                    return result;
                }
                else
                {
                    return !result;
                }
                
            }

            return result;

        }
        public static bool operator false(Array array)
        {
            Array array1 = new Array(array.Length);
            bool result = true;
            foreach (var item in array1.array)
            {
                if (item <= 0)
                {
                    return result;
                }
                else
                {
                    return !result;
                }

            }

            return result;

        }

        public static implicit operator Array (int Length) // Неявное (explcit  - Явное)
        {
            return new Array(Length); 
        }

        // И есть ряд операторов, которые нельзя перегрузить, например,
        // операцию равенства = или тернарный оператор ?:, а также ряд других.
        // Полный список перегружаемых операторов можно найти в документации msdn

        public static bool operator < (Array arr_1, Array arr_2)
        {
            

            for (int i = 0; i < arr_1.array.Length; i++)
            {
                if (!(arr_1.array[i] > arr_2.array[i]))
                {
                    return false;
                }
            }
            return true;


        }

        public static bool operator >(Array arr_1, Array arr_2)
        {
            return arr_1 < arr_2;
        }





        #endregion


        #region nested class

        public class Production
        {
            private int ID = 3;
            public string Name = "Apple";

           
        }
        public class Developer
        {
            public int Id = 1;
            public string Name = "Paul";
            public string Surname = "Arts";
            public string Department = "Canada";

        }

        #endregion

        #region  StatisticOperation


        public static class StatisticOperation
        {
            public static int MinMaxSum(Array arr)
            {
                return arr.array.Max() + arr.array.Min();
            }

            public static int MinMaxDiff(Array arr)
            {
                return arr.array.Max() - arr.array.Min();
            }

            public static int GetNumCount(Array arr)
            {
                {
                    return arr.array.Length;
                    
                }
            }
        }


        #endregion

        

    }

    #region  Методы расширения
    public static class StringExtension
    {
        public static bool Contains(this string input, char c)
        {

            return input.Contains(c);

        }



       

    }


   
    #endregion

}
