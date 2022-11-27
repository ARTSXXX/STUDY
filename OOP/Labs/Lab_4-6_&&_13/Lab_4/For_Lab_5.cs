using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{

    enum Plays { Warcraft, CS_1_6, Heroes}
    

    partial class For_Lab_5
    {


        public Plays play;

        public For_Lab_5 (Plays play) {

            this.play = play;

            }



        


        public void Print ()
        {
            Console.WriteLine(play);
        }


        
        

    }
}
