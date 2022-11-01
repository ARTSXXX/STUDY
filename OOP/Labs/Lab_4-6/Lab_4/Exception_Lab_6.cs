using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
namespace Lab_4
{
    class Exception
    {

        int[] arr = new int [3];

        public void ExceptionMethod ()
        {
            try
            {
                arr[6] = 1;
            }
            catch (System.Exception ex)
            {
                Console.WriteLine($"Наследуемый класс содержит ошибку. Её вид - {ex}" );
            }

            try
            {
                int x = 5;
                int y = x / 0;
                Console.WriteLine($"Результат: {y}");
            }
            catch
            {
                Console.WriteLine("Возникло исключение! При делении на 0");
            }
            finally
            {
                Console.WriteLine("Блок finally");
            }


            try
            {
                Directory.Delete(@"C:\Users\Pavel Arts\Desktop\1");
            }

            catch {
                Console.WriteLine("Вы пытаетесь удалить не файл, а папку. Либо папки нет.");
            }
            

           

            #region Многоразовые исключения

            try
            {
                Console.WriteLine("Введите число типа byte: ");
                byte b = byte.Parse("1233");
                int[] myArr = new int[5] { 1, 2, 0, 10, 12 };
                Console.WriteLine("Исходный массив: ");

                for (int j = 0; j <= myArr.Length; j++)
                    Console.WriteLine("{0}\t", myArr[j]);

                int i = 120;
                Console.WriteLine("\nДелим на число: \n");
                foreach (int d in myArr)
                    Console.WriteLine(i / d);
            }
            // Обрабатываем исключение, возникающее
            // при арифметическом переполнении
            catch (OverflowException)
            {
                Console.Write("Данное число не входит в диапазон 0 - 255");
            }
            // Исключение при делении на 0
            catch (DivideByZeroException)
            {
                Console.WriteLine("Делить на ноль нельзя");
            }
            // Исключение при переполнении массива
            catch (IndexOutOfRangeException)
            {
                Console.WriteLine("Индекс выходит за пределы\n");
            }
            #endregion



            

        }
        string name = "Pavel";
        string name2 = null;
        public void Assert_Test()
        {
            Debug.Assert(name == null, "User have name");
     
        }


       
    }
}
