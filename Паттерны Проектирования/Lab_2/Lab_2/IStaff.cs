using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public interface IStaff
    {

        public List<JobVacancy> GetJobVacancies()
        {
            return GetJobVacancies();
        }
        public List<Employee> GetEmployee()
        {
            return GetEmployee();
        }
        
        public int addJobTitle (JobVacancy jobVacancy)
        {
            return 1;
        }

        public string printJobVacancy(JobVacancy jobVacancy);
       
        public void openJobVacancy (JobVacancy jobVacancy) {

        }

        public bool closeJobVacancy (JobVacancy job)
        {
            return false;
        }

        public bool dismiss(int x, Reason per)
        {
            return false;
        }

     
        

    }
}
