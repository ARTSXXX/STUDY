using System;

namespace Lab_10
{

    class Program
    {
        static void Main()
        {
            Collection collection = new Collection();
            string[] months = new string[] { "January", "February", "Marth", "April", "May", "June", "July", "August", "Sept", "Oct", "Nov", "Dec" };
            Console.WriteLine("Введите месяц");
            int len = Convert.ToInt32(Console.ReadLine());




            IEnumerable<string> query_1 =
                from month in months
                where month.Length == len
                select month;
            foreach (var item in query_1)
            {
                Console.Write(item + " ");
            }

            IEnumerable<string> query_2 =
                from month in months
                where Array.IndexOf(months, month) == 0 ||
                Array.IndexOf(months, month) == 1 ||
                Array.IndexOf(months, month) == 5 ||
                Array.IndexOf(months, month) == 6 ||
                Array.IndexOf(months, month) == 7 ||
                Array.IndexOf(months, month) == 11
                select month;
            Console.WriteLine("Лeтние Месяца");
            foreach (var item in query_2)
            {
                Console.Write(item + " ");
            }

            IEnumerable<string> query_3 =

                from month in months
                orderby month
                select month;
            Console.WriteLine("");
            Console.WriteLine("В алфовитном порядке");
            foreach (var item in query_3)
            {
                Console.Write(item + " ");
            }


            IEnumerable<string> query_4 =
                from month in months
                where month.Contains("u") && month.Length > 4
                select month;
            foreach (var item in query_4)
            {
                Console.WriteLine(item);
            }

            collection.Push();
            collection.Add_Arr();
            collection.task_3();
            collection.Query();

            Console.WriteLine("Свои запросы - условие");

            var HELLO = from month in months
                        where month == "Marth"
                        select month;

            foreach (var item in HELLO)
            {
                Console.WriteLine(item);
            }

            Console.WriteLine("Свои запросы - упорядок");
            var HELLO_2 = from month in months

                          orderby month ascending
                          select month;

            foreach (var item in HELLO_2)
            {
                Console.Write(item + " ");
            }

            Console.WriteLine("");
            Console.WriteLine("JOIN HERE");


            List<City> lst = new List<City>();
            List<OLD_CITY> lst_old = new List<OLD_CITY>();


            lst.Add(new City { name = "Minsk", age = 1067 });
            lst.Add(new City { name = "Uzda", age = 1494 });



            lst_old.Add(new OLD_CITY { name = "Polozk", age = 862 });
            lst_old.Add(new OLD_CITY { name = "UZda_Old", age = 1494 });


            IEnumerable<City> result_join =
            from cities_new in lst
            join cities_old in lst_old
            on cities_new.age equals cities_old.age
            select cities_new;

            ]


           





        }
    }
}