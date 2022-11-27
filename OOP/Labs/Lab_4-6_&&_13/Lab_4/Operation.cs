using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    class ListOperation : Virus
    {
         
        protected string antivirus; 
        protected string panelWork;
        protected string service;

        public string Antivirus
        {
            get => antivirus;
            set => antivirus = value;
        }

        public string PanelWork
        {
            get => panelWork;
            set => panelWork = value;
        }

        public void Print ()
        {
            Agree_dangerous = 3;

            Console.WriteLine("Agree_dangerous is - " + Agree_dangerous);
        }

    }
}
