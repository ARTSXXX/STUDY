using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Text.Json;

namespace Lab_7
{
    class ColectionType<T, Human> : IUser<T> where T : IComparable<T>
        //Ограничение на интерфейс
        // Требует реализации одного или нескольких интерфейсов аргументом типа.
        // Это ограничение накладывается указанием имени требуемого интерфейса.
    {
      
        // List<T>: класс, представляющий последовательный список. Реализует интерфейсы IList<T>, ICollection<T>, IEnumerable<T>

    
        List <int> list = new List<int>();
      

        public void Push()
        {

            list.Add(12);
            list.Add(15);
            list.Add(16);
            list.Add(17);
            list.Add(18);


        }

        public void Pop ()
        {
            

            
                list.Remove(list[list.Count - 1]);

            try
            {
                if (list.Count == 0)
                {
                    Console.WriteLine("Список пуст");

                }
            }
            catch (System.Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
            finally
            {
                Console.WriteLine("Программа выполнена корректно");
            }
          
            

            
        }
        
        public void Print ()
        {
            
                for (int i = 0; i < list.Count; i++)
            {
                Console.Write(list[i] + " ");
            }
                
        }

        public void PushToFile()
        {
            using StreamWriter sw = new("File.json");
            var str = JsonSerializer.Serialize(list);
            sw.WriteLine(str);

        }

      
       
       public void ReadFromFile()
            {
                using StreamReader sw = new("File.json");
                var str = sw.ReadToEnd();
                list = JsonSerializer.Deserialize<List<int>>(str);
            }
        











    }
}
