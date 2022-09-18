using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_First
{
    class Types
    {
        #region ExA | Types
        #region Fileds
        private static bool BoolVal = true;
        private static byte ByteVal = 2;
        private static char CharVal = 'c';
        private static decimal DecimalVal = 1213123;
        private static double DoubleVal = 123.123;
        private static float FloatVal = 222.2f;
        private static int IntVal = 123;
        private static short ShortVal = 123;
        #endregion
        public static void ExA()
        {
            Console.WriteLine($"Bool - {BoolVal}");
            Console.WriteLine($"Byte - {ByteVal}");
            Console.WriteLine($"Char - {CharVal}");
            Console.WriteLine($"Decimal - {DecimalVal}");
            Console.WriteLine($"Float - {FloatVal}");
        }
        #endregion




        #region ExB | Convert

        private static void ExB() { 
        // Неявное преобразование
            
        float IntToFloat = IntVal;
        double FloatToDouble = FloatVal;
        long ShortToLong = ShortVal;
        int ShortToInt = ShortVal;
        float ByteToFloat = ByteVal;

        // Явное преобразование

        float ExpicitIntValue = (int)IntVal;
        double ExpicitDoubleValue = (double)(float)(DoubleVal + FloatVal);
        int ExpicitIntValue_2 = (short)(uint)(ShortVal + ByteVal);
        int ExpicitIntValue_3 = Convert.ToInt32("213");
        float ExpicitFloatValue_2 = (float)(Convert.ToInt32("123"));
        }


        #endregion


        #region EXC

        public static void ExC()
        {
            // Упаковка и распаковка 

            // Упаковка - это преобразования value типа в объект.

            int stoncks = 39;
            Object obj = stoncks;       // Упаковка

            object obj_1 = 5;           // Распаковка
            int prot_obj = (int)(obj_1);


            // Неявная типизированная переменная

            var numb = 123;
            var symbol = 'a';
            var strings = "asd";
            var floats = 5.0f;

            // Nullable 


            float? float_nullable = null;

            float_nullable = 3.0f;


            /* Определите переменную типа var и присвойте ей любое
            значение.Затем следующей инструкцией присвойте ей значение
            другого типа. Объясните причину ошибки. */

            var numbs = 123123;
            // numbs = false


        }

        #endregion
    }
}
