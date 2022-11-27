using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP_Lab11
{
    public class Prod : IEnumerable, IEnumerator, ICloneable
    {
        public int Id = 0;
        public string Name;

        public Prod(int id = 1) => this.Id = id;
        
        public int Method_with_r(int num) => Id * num;
        
        public void Method1()
        {
            PMethod();
        }
        public void Method()
        {
            PMethod();
        }
        public void Method(string str, object obj)
        {
            PMethod();
        }
        private void PMethod()
        {
            Console.WriteLine("Method1");
        }
        public object Current => throw new NotImplementedException();

        public object Clone()
        {
            throw new NotImplementedException();
        }

        public IEnumerator GetEnumerator()
        {
            throw new NotImplementedException();
        }

        public bool MoveNext()
        {
            throw new NotImplementedException();
        }

        public void Reset()
        {
            throw new NotImplementedException();
        }
    }
}
