using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    class Word : TextProccesor
    {

        string _words;
        int _len;
        int _years_start;


        public string Words
        {
            get => _words;
            set => _words = value;
        }

        public int Years_start
        {
            get => _years_start;
            set => _years_start = value;
        }

        public int Len
        {
            get => _len;
            set => _len = value;
        }

    }
}
