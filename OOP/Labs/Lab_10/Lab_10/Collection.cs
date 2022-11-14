using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_10
{
    class City
    {
        public string name { get; set; }
        public int age { get; set; }
    }
    class OLD_CITY
    {
        public string name { get; set; }
        public int age { get; set; }
    }
    class Collection
    {



        List<Vector> list = new List<Vector>();

        public void Push()
        {
            for (int i = 0; i < 10; i++)
            {
                list.Add(new Vector());
            }

        }

        public void Add_Arr()
        {
            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    list[i].Temps[j] = j;
                }
            }
        }

        int count = 0;
        public void task_3()
        {
            for (int i = 0; i < 10; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    if (list[i].Temps[j] == 0)
                    {
                        count++;
                    }
                }
            }
            Console.WriteLine(count + " Векторов содержит нулевой вектор");
        }

        

       
       
        public void Query()
        {


            Console.WriteLine("Имеющий 0");
            int count = 0;
            var query_4 = (
                from vec in list
                where vec.Temps.Any(el => el == 0)
                select vec.Temps).ToList();

            foreach (var arr in query_4)
            {
                foreach (var item in arr)
                {
                    if (item == 0)
                    {
                        count++;
                    }
                }
            }
            
            Console.WriteLine("Кол-во массивов " + count);

            Console.WriteLine("список векторов с наименьшим модулем.");
            var query_5 =
                                    from vec in list
                                    select vec.Temps.Length;



            Console.WriteLine(query_5.Max());
            



            

           
        }
    }
}
 