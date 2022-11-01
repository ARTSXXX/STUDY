using System;
namespace Lab_8
{
    

    class Program
         
    {
        static void Main(string[] args)
        {


            User user_1 = new User();
            Str str = new Str();
           


            user_1.compress += new Compress(Handler);
            user_1.InvokerEvent();
            

            // Test 
            user_1.red += new Red(Hand);
            user_1.InvokeEvent();



           

            Move move = (x) => x; // Лямба выражение

            Compress compress = Coef_compress;
            double Coef_compress() => 0.5; 


            Console.WriteLine("Длина перемещения "+move(13)); 
            Console.WriteLine("Коэф сжатия " + compress());







            str.Remove();
            str.Add();
            str.Big_Size();
            str.Operation("Hi", "World", str.Print_Sum);


            #region Подписание события (связывание с методами)

            double Handler() => 2.5;
           
            void Hand ()
            {
                Console.WriteLine("Test completed");
            }



            #endregion

            #region Func
            Func<string, string> Remove;
            Remove = str1 =>
            {  //блочное лямбда-выражение(упрощенная запись анонимных методов) 
                char[] sign = { '.', ',', '!', '?', '-', ':' };
                for (int i = 0; i < str1.Length; i++)
                {
                    if (sign.Contains(str1[i]))
                    {
                        str1 = str1.Remove(i, 1);
                    }
                }
                return str1;
            };
            #endregion


        }


    }
}