using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace Lab_4
{
    class Container
    {




        public string[] arr = new string[] { };
        

        public void get(ref string[] array, string value, int index)
        {
            string[] newArray = new string[array.Length + 1];
            newArray[index] = value;
            for (int i = 0; i < index; i++)
            {
                newArray[i] = array[i];
            }

            for (int i = index; i < array.Length; i++)
            {
                newArray[i + 1] = array[i];
            }
            array = newArray;

        }

        public void set (ref string[] arr, int index) 
        {
            string [] newArray = new string[arr.Length - 1];
            for (int i = 0; i < index; i++)
            {
                newArray[i] = arr[i];
            }

            for (int i = index + 1; i < arr.Length; i++)
            {
                newArray [i- 1] = arr[i];
            }

            arr = newArray;
        }
        

     

        public void Print ()
        {
            string[] arr = new string[] { };
            get(ref arr, "Antivirus", 0);
            get(ref arr, "Ccleaner", 1);
            

            Console.WriteLine(arr[0] + " and " + arr[1]);
        }

    }
}
