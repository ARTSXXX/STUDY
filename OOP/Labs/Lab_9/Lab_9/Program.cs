using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;


namespace Lab_9

{

    class Program : Auto, IList<string>
    {

        static void Main(string[] args)
        {

            Auto auto = new Auto();

            auto.name = "Porshe";
            auto.speed = 200;

            Auto auto_2 = new Auto();
            auto_2.name = "Bummer";

            auto.Print();

            Dictionary<int, string> Collection = new Dictionary<int, string>();

            Collection.Add(1, auto.name);
            Collection.Add(2, auto_2.name);
            Collection.Remove(1);
            Collection.Add(1, auto.name);
            Collection.ContainsKey(2);


            Console.WriteLine(Collection[2]);
            Console.WriteLine("Есть ли Porshe? - " + Collection.ContainsValue("Porshe"));
            
            Console.WriteLine("Вывод коллекции:");
            foreach (var item in Collection)
            {

                Console.WriteLine(item);
            }

            UniversalColl universalColl = new UniversalColl();
            Console.WriteLine("Вывод универсальной коллекции");
            Console.WriteLine("Сколько элементов удалим");
            universalColl.Remove();
            universalColl.Print();
            Console.WriteLine("Элементы второй коллекции.");
            universalColl.Add_two();
            universalColl.Search_LinkedLink();

            #region 3
            var myCollection3 = new ObservableCollection<Auto>();
            Auto services4 = new Auto();

            myCollection3.CollectionChanged += Collection3_CollectionChanged;
            myCollection3.Add(services4);
            myCollection3.Remove(services4);

            static void Collection3_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
            {
                switch (e.Action)
                {
                    case NotifyCollectionChangedAction.Add:
                        Console.WriteLine($"Добавлен новый объект");
                        break;

                    case NotifyCollectionChangedAction.Remove:
                        Console.WriteLine($"Удален объект");
                        break;
                }
            }
            #endregion

        }

        public List<string> ThisSpeed()
        {
            return new List<string>() {"Bmw", "Mercedes"};
        }

        
    }
}