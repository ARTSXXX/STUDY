using System;

    namespace Lab_4;
  

    class Program

{

   

    static void Main(string[] args)
    {

        Sapper p1 = new Sapper();
        Developer p2 = new Developer();
        ListOperation p3 = new ListOperation();
        p1.Print();

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
        
        if  (p4 as Player  != null )
        {
            Console.WriteLine("As is ex");
        }

        Developer p5 = new Developer();

        Console.WriteLine(p5.ToString());
        
        Printer p6 = new Printer();

        p6.IAmPrinting(p4);

       
    }
}


