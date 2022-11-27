using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    class SoftWare
    {

        protected string name;  // Code Convension - _name
        protected int version;
        protected int duration;


        public string Name
        {
            get => name;
            set => name = value;
        }

        public int Version
        {
            get => version;
            set => version = value;
        }
        public int Duration
        {
            get => duration;
            set => Duration = value;
        }

    }
}
