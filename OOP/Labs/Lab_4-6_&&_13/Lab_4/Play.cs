using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{


    [Serializable]
    public class Play
    {

       


        int _countLvl;
       public int _hard;


        public int CountLvl
        {
            get => _countLvl;
            set => _countLvl = value;
        }

        public int Hard
        {
            get => _hard;
            set => _hard = value;
        }

    }
}
