using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class University : Organization, IStaff
    {

        protected List<Faculty> faculty_list = new List<Faculty>();
        public List<JobVacancy> job = new List<JobVacancy>();
        Employee person = new Employee();

        public University() {

        } 

        public University (University univer)
        {

        }

        public University (string name, string shortname, string adress)
        {

        }

        public int addFaculty(Faculty faculty)
        {
            return 1;
        }

        public bool delFaculty (Faculty faculty)
        {
            return false;
        }


        public bool updFaculty(Faculty faculty)
        {
            return false;
        }

        public bool verFaculty (int ver)
        {
            return false;
        }

        public List<Faculty> GetFaculties()
        {
            return faculty_list;
        }

        public void PrintInfo ()
        {
            Console.WriteLine("Кол-во факультетов " + faculty_list.Count);
        }

        public List<JobVacancy> GetJobVacancies()
        {
            return job;
        }

        public int addJob(JobVacancy job)
        {
            return 1;
        }

        public bool delJob(JobVacancy job)
        {
            return false;
        }

        public int openJobVacancy (JobVacancy job)
        {
            return 1;
        }

        public bool CloseJobVacancy(int close)
        {
            return false;
        }

        public Employee recruit (JobVacancy job, Employee person)
        {
            return person;
        }

        public string printJobVacancy(JobVacancy jobVacancy)
        {
            return "Middle developer";
        }





    }
}
