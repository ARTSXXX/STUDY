using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    class Printer
    {

        public void IAmPrinting(InterfacePlayer someobj)
        {
            Console.WriteLine("----------7-------------");
            Console.WriteLine(someobj.ToString());
            Console.WriteLine(someobj.GetType());
        }

    }
}
