using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Organization : IStaff
    {


        public int id;
        private int _id
        {
            get
            {
                return _id;
            }
            set
            {
                value = _id;
            }
        }

        public string name;
        private string _name
        {
            get
            {
                return _name;
            }
            set
            {
                value = _name;
            }
        }

        public string shortname;
        private string _shortname
        {
            get
            {
                return _shortname;
            }
            set
            {
                value = _shortname;
            }
        }

        public string adress;

        private string _adress
        {
            get
            {
                return _adress;
            }
            set
            {
                value = _adress;
            }
        }

        public static String GetTimestamp(DateTime value)
        {
            return value.ToString("yyyyMMddHHmmssffff");
        }

        private static String _GetTimestamp(DateTime value)
        {
            return value.ToString("yyyyMMddHHmmssffff");
        }   

        public Organization ()
        {

        }

        public Organization (Organization org)
        {

        }

        public Organization (string name,string shortname, string adress)
        {

        }

        public void PrintInfo ()
        {
            name = "BSTU";
            Console.WriteLine(name);
        }

        public string printJobVacancy(JobVacancy jobVacancy)
        {
            return "High Teacher C++";
        }



    }
}
