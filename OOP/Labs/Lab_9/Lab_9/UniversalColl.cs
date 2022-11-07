using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
namespace Lab_9
{
    class UniversalColl
    {

      List<string> Auto_list = new List<string>() { "bmw", "merc", "hyndai"};

        public void Print ()
        {
            foreach (var item in Auto_list)
            {
                Console.WriteLine(item);
            }
        }

      
       public void Remove ()
        {
            int n = Convert.ToInt32(Console.ReadLine());

            while (n > 0)
            {
                Auto_list.RemoveAt(--n);
            }
        }

        LinkedList<string> link = new LinkedList<string>();

        public void Add_two ()
        {
            for (int i = 0; i < Auto_list.Count; i++)
            {
                link.AddLast(Auto_list[i]);
                
            }
            foreach (var item in link)
            {
                Console.WriteLine(item);
            }
            
        }

        public void Search_LinkedLink ()
        {
            Console.WriteLine("Какой элемент будет искать?");
            string n = Console.ReadLine();
            foreach (var item in link)
            {
               if (item == n )
                {
                    Console.WriteLine($"Элемент {n} найден.");
                }
            }

        }

        
    }
}
