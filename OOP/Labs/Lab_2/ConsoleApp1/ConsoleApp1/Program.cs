using System;

namespace Lab_2;

class Program {
    public static void Main()
    {

        Vector vector_1 = new Vector();
        Vector vector_2 = new Vector(5, true);






        vector_1.Mult(5, 5);
        vector_1.Sum(3);


        foreach (var el in vector_1.Temps)
        {
            Console.WriteLine(el);
        }


        // main

        vector_1.Print();

        Console.WriteLine("Вывод с помощью свойств приватной переменной private - " + vector_1.state_get_set);

        Vector.PrintCount();
        Console.WriteLine(vector_1.Equals(vector_2));
        Console.WriteLine(vector_1.GetHashCode());
        Console.WriteLine(vector_1.ToString());
        Console.WriteLine(vector_2.ToString());


        // КУРСИВ В ТАБИЛЦЕ! Содержащие 0
        Vector[] vectors = { vector_1, vector_2 };

        if (vector_1.Length_2 == 0)
        {
            Console.WriteLine("Список векторов, содержащих 0  " + vector_1.ToString());
        }
        if (vector_2.Length_2 == 0)
        {
            Console.WriteLine("Список векторов, содержащих 0  " + vector_1.ToString());
        }
        else
        {
            Console.WriteLine("Векторов содержащих 0  - Нет!");
        }

        // С наиименьшим модулем
        if (Math.Abs(vector_1.Length_2) < Math.Abs(vector_2.Length_2))
        {
            Console.WriteLine("Список векторов, с наименьшим модулем " + vector_1.ToString());
        }
        else
        {
            Console.WriteLine("Список векторов, с наименьшим модулем " + vector_2.ToString());
        }

        // Анонимный тип
        var Anonymous = new { Length_2 = 15, state = false  };
        Console.WriteLine(Anonymous);
    }

}

      
   


