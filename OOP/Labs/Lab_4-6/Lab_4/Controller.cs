using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Lab_4
{
    class Controller
    {
        public void Print ()
        {
            List<string> list = new List<string>();
            list.Add("Cclearner");
            list.Add("Antivirus");
            list.Add("RAM Memory");
            list.Sort();


            Console.WriteLine("Отсоортированные данные - " + list[0] + " " + list[1] + " " + list[2]);
        }
      

    }
}
