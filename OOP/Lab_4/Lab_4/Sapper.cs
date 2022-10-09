using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
     class Sapper : Play
    {

        bool _mins;


        public bool Mins {

            get => _mins;
            set => _mins = value;
        }

       
        
        public void Print ()
        {
            Hard = 3;

            Console.WriteLine(Hard + " is Hard_LVL");

        }




    }

}
