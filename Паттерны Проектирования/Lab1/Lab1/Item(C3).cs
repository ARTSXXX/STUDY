using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1
{
    class Item 
    {
        public string ItemName { get; set; }
        private string ItemOwner;

        public void SaleItem ()
        {
            Console.WriteLine("Item продан");
        }
        
    }
}
