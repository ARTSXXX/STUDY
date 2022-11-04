using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_8
{

    public delegate void Action();
    public delegate bool Predicate ();
  
    class Str
    {
        private string String { get; set; } = "Hi, u lose";



        public void Remove()
        {
            String = new string(String.Where(c => !char.IsPunctuation(c)).ToArray());
            Console.WriteLine(String);
        }

        public void Add ()
        {
           String += Console.ReadLine();
            Console.WriteLine(String);
        }

        public void Big_Size ()
        {
           
            Console.WriteLine(String.ToUpper());
        }

        public void Operation (string s1, string s2, Action<string, string> str_sum)
        {
            str_sum(s1, s2);
        }

        public void Print_Sum(string x, string y) => Console.WriteLine(x+y);

        Predicate<string> predicate = (str) => str.Length > 10;

        

    }
}
