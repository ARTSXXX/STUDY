using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Faculty : Organization, IStaff
    {

        public Faculty() { }
        public Faculty(string name, string shortname, string address) { }
        public Faculty (Faculty fac)
        {

        }

        public int addDepartament (Departament dep)
        {
            return 0;
        }

        public bool delDepartament(Departament dep)
        {
            return false;
        }


        public bool updDepartament(Departament dep)
        {
            return false;
        }

        public bool verDepartament(int ver)
        {
            return false;
        }

        public List<Departament> GetDepartaments ()
        {
            return new List<Departament>();
        }

        public void PrintInfo()
        {
            Console.WriteLine(GetDepartaments);
        }

        public List<JobVacancy> GetJobVacancies()
        {
            return new List<JobVacancy>();
        }
         
        public int JobTitle (JobVacancy jobVacancy)
        {
            return 0;
        }


           

    }
}
