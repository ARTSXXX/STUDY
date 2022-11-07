using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_9
{
    class Auto
    {

         public string name { get; set; }
         public int speed { get; set; }

       

        public void Print() => Console.WriteLine($"{name} is have {speed} speed");




    }

    interface IList<T>
    {
        List<T> ThisSpeed();
    }
}
