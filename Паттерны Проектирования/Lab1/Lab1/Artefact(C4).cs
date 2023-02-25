using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1
{
    class Artefact : Item, ICollect
    {


        public void BuyItem()
        {
            Console.WriteLine(ItemName);
        }

        public void Collect ()
        {
            Console.WriteLine(ItemName);
        }

        public Artefact (string ItemName)
        {
            this.ItemName = ItemName;
        }

    
    }

    interface ICollect
    {
        public void Collect();
    }
}
