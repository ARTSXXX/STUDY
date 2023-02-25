using Lab_2;
using System;
namespace Lab
{
    class Program
    {

        static void Main(string[] args)
        {
            Organization org = new Organization();
            org.PrintInfo();

            Faculty fac = new Faculty();

            University univer = new University();

            #region Demo 
            univer.id = 5; // Взяли свойства у класса Organization

            JobVacancy job = new JobVacancy();
            Console.WriteLine(univer.printJobVacancy(job));
            #endregion
        }

    }
}