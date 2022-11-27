using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;
using System.Text.Json;
using System.Xml;
using System.Xml.Linq;

namespace Lab_4;
[Serializable]

struct Book
{
    public int title;
    public string name;
    public string autor;
}
public abstract class LogBase
{
    public abstract void Log(string Messsage);
}

public class Logger : LogBase
{

    private String CurrentDirectory
    {
        get;
        set;
    }

    private String FileName
    {
        get;
        set;
    }

    private String FilePath
    {
        get;
        set;
    }

    public Logger()
    {
        this.CurrentDirectory = Directory.GetCurrentDirectory();
        this.FileName = "Log.txt";
        this.FilePath = this.CurrentDirectory + "/" + this.FileName;

    }

    public override void Log(string Messsage)
    {

        System.Console.WriteLine("Logged : {0}", Messsage);

        using (System.IO.StreamWriter w = System.IO.File.AppendText(this.FilePath))
        {
            w.Write("\r\nLog Entry : ");
            w.WriteLine("{0} {1}", DateTime.Now.ToLongTimeString(), DateTime.Now.ToLongDateString());
            w.WriteLine("  :{0}", Messsage);
            w.WriteLine("-----------------------------------------------");
        }
    }
}
[Serializable]
class Program : Exception

{
   
    static void Main(string[] args)
    {


       


        Sapper p1 = new Sapper();
        Sapper p12 = new Sapper();
        Developer p2 = new Developer();
        ListOperation p3 = new ListOperation();
        p1.Print();

        #region Бинарная
        BinaryFormatter formatter = new BinaryFormatter();
        // получаем поток, куда будем записывать сериализованный объект
        using (FileStream fs = new FileStream("Binary.dat", FileMode.OpenOrCreate))
        {
            formatter.Serialize(fs, p1);

            Console.WriteLine("Объект сериализован");
        }


        using (FileStream fs = new FileStream("Binary.dat", FileMode.OpenOrCreate))
        {
            Sapper newPerson = (Sapper)formatter.Deserialize(fs);

            Console.WriteLine("Объект десериализован");
          
        }

        #endregion

        #region JSON
        string json = JsonSerializer.Serialize(p1); // Сериализуем
        Console.WriteLine(json);
        Sapper? restoredPerson = JsonSerializer.Deserialize<Sapper>(json); // Десериализуем
        Console.WriteLine("JSON");
        Console.WriteLine(restoredPerson?.Mins);

        using (FileStream fs = new FileStream("JSON.json", FileMode.OpenOrCreate))
        {
       
            JsonSerializer.SerializeAsync<Sapper>(fs, p1);
            Console.WriteLine("Data has been saved to file");
        }

        // чтение данных
        using (FileStream fs = new FileStream("JSON.json", FileMode.OpenOrCreate))
        {
            Sapper? person = JsonSerializer.Deserialize<Sapper>(fs);
            Console.WriteLine($"Name: {person?.Mins}  Age: {person?.Mins}");
        }

        #endregion

        #region XML

        // передаем в конструктор тип класса Person
        XmlSerializer xmlSerializer = new XmlSerializer(typeof(Sapper));

        // получаем поток, куда будем записывать сериализованный объект
        using (FileStream fs = new FileStream("XML.xml", FileMode.OpenOrCreate))
        {
            xmlSerializer.Serialize(fs, p1);

            Console.WriteLine("Object has been serialized");
        }


        using (FileStream fs = new FileStream("XML.xml", FileMode.OpenOrCreate))
        {
            Sapper? person = xmlSerializer.Deserialize(fs) as Sapper;
            Console.WriteLine($"Name: {person?.Mins}");
        }
        #endregion


        #region Сериализация для массива объектов

        Sapper [] sappers = new Sapper [2] {p1, p12};

        using (FileStream fs = new FileStream("JSON_ARR.json", FileMode.OpenOrCreate))
        {

            JsonSerializer.Serialize(fs, sappers);
            Console.WriteLine("Data has been saved to file");
        }


        #region
        XmlDocument xDoc = new XmlDocument();
        xDoc.Load("XML.xml");
        XmlElement? xRoot = xDoc.DocumentElement;

        // выбор всех дочерних узлов
        XmlNodeList? nodes = xRoot?.SelectNodes("*");
        if (nodes is not null)
        {
            foreach (XmlNode node in nodes)
                Console.WriteLine(node.OuterXml);
        }
        #endregion

        #region
        var filename = "XML.xml";
        var currentDirectory = Directory.GetCurrentDirectory();
        var purchaseOrderFilepath = Path.Combine(currentDirectory, filename);

        XElement purchaseOrder = XElement.Load(purchaseOrderFilepath);

        IEnumerable<XElement> pricesByPartNos = from item in purchaseOrder.Descendants("Hard")
                                             
                                                select item;
        #endregion

        #endregion
        p2.Print();

        p3.Print();

        Player p4 = new Player();
        Pistol pistol = new Pistol();

        p4.Fire(pistol);
        ((InterfacePlayer)p4).Run();

        //Демонстрационная программа

        if (p4 is Player)
        {
            Console.WriteLine("This is player");

        }

        if (p4 as Player != null)
        {
            Console.WriteLine("As is ex");
        }

        Developer p5 = new Developer();

        Console.WriteLine(p5.ToString());

        Printer p6 = new Printer();

        p6.IAmPrinting(p4);





        For_Lab_5 p7 = new For_Lab_5(Plays.CS_1_6);

        p7.Print();


        Book b_name;

        b_name.name = "The lord of ring";
        Console.WriteLine(b_name.name);


        Container p8 = new Container();
        p8.Print();


        Controller p9 = new Controller();

        p9.Print();

        Exception p10 = new Exception();
        p10.ExceptionMethod();
        #region Класс-Контроллер



        #endregion

        #region Вынести в main обработку исключений
        int count = 0; 
        try
        {
            int x = 12;
            int r = 0;
            int b = x / r;

            
        }
        catch (DivideByZeroException ex) 
        {
            Console.WriteLine();
            Console.WriteLine($"Суть ошибки с выражением x / r - {ex}");
            count++;
        }
        try
        {
            int[] arr = new int[5];
            arr[6] = 3;

        }
        catch (IndexOutOfRangeException ex) 
        {
            Console.WriteLine();
            Console.WriteLine($"Суть ошибки с индексами - {ex}");
            count++;
        }
       
        finally
        {
            Console.WriteLine("Количество исключений - " + count);
        }

        #endregion

        p10.Assert_Test();



        #region Log

        var logger = new Logger();
            logger.Log("Pavel");
            logger.Log("Gena");



       
        #endregion


    }
}

    



