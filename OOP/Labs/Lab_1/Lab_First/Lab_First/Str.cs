using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_First
{
     public static class Str
     {


         public static void PrintStr()
        {

            // Строковые литералы 
            string StrLiteral = "Hello";
            Console.WriteLine("---STR---");
            Console.WriteLine($"Строковый литерарал - {StrLiteral}");

            // Три строки 


            string mark = "Mersedes";
            string price = "2000";
            string year = "1850";

            // Сцепление выполнить
            string marks_year = mark + " " + year;

            // Копирование 

            string copy_marks_year = marks_year;

            // Подстрока

            string subStr = mark.Substring(0, 3);

            // Разделение строки на слова 

            string str_2 = "I hatemyself";

            string[] arr_str_2 = str_2.Split(' ');

            // Вставка по строке в заданную позицию

            string v2_str_2 = str_2.Insert(2, " not ");

            // Удаление заданной подстроки 

            string v3_str2 = str_2.Remove(0, 3); // 1. Start_Index 2. Count_Remove_Char

            string v4_str2 = $"{str_2} - this is cool";

            // Пустая null строка

            string str_3 = null;
            string str_4 = "";
            Console.WriteLine();
            Console.WriteLine("Пустая строка - " + string.IsNullOrEmpty(str_3));
            Console.WriteLine("Пустая строка - " + string.IsNullOrEmpty(str_4));


            // Builder

            StringBuilder strsss = new StringBuilder("Loves");
            strsss.Remove(1, 2);
            strsss.Insert(0, 'I');
            strsss.Append('U');




        }





    }
}
