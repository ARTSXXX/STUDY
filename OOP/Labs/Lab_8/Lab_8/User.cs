using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_8
{
    delegate int Move(int x);
   public delegate double Compress();
    public delegate void Red();
  
    class User
    {

        event Move? move;
       public event Compress? compress; 
        public event Red? red;

        public void InvokerEvent()
        {
            compress.Invoke();
        }
        public void InvokeEvent()
        {
            red.Invoke();
        }



    }
   
}
