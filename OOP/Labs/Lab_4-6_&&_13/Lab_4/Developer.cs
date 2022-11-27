using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    class Developer : SoftWare
    {

        string _name = "Pavel";

        public string Name
        {
            get => _name;
            set => _name = value;
        }


        public void Print ()
        {
            Name = "Pavel have a ";
            Version = 3;
            Console.WriteLine(Name + Version + " - version ПО");
        }
        public override string ToString()
        {
            return base.ToString() + $" - {Name}";            
        }


      

    }
}
