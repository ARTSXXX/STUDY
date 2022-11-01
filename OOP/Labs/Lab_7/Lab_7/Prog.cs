using System;
using System.IO;

namespace Lab_7
{
    class Program
    {

       
        static void Main(string[] args)
        {




            ColectionType<int, Human> colectionType = new ColectionType<int, Human>();
            colectionType.Push();
            colectionType.Pop();
            colectionType.Print();
            colectionType.PushToFile();
            colectionType.ReadFromFile();

           













        }
    }



}

