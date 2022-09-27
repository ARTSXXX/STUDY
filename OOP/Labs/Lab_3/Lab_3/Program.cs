using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    class Program
    {
        static void Main(string[] args)
        {
             Array array = new(5);
           

             array.Print();

            Array.Production instance = new Array.Production();
            Console.WriteLine("\n" + instance.Name);

            string s = "Hello";
            Console.WriteLine(s.Contains('r'));

            

        }

       

    }
}
