using System;
namespace Lab_10;

partial class Vector
{

    public int Length_2;




    private bool state;
    private static int count = 0;






    // Variant part

    public int[] Temps = new int[10];
    
    public int Length = 4;
    public bool State = true;
    public static int index = 3;


   

   public void Sum(int num)
    {
        for(int i = 0; i < Length; i++)
        {
            Temps[i] += num;
        }
    }


    public void Mult(int a, int b)
    {
        Console.WriteLine(a * b);
    }

    

    public int this[int index]
    {
        get => Temps[index];
        set => Temps[index] = value;
    }

    // Main Part
    // Constructor
    public Vector() // Консктуры по умолчанию

    {

        state = true;
        Length_2 = 3;
        count++;
        

    }


    public Vector(int Length_2, bool state)
    {
        this.Length_2 = Length_2;
        this.state = state;
        count++;
    }

    

    static Vector ()
    {
        Console.WriteLine(index);
      
    }

    private Vector(int index)
    {
        index = index;
        count++;

    }


    // Определить методы для констурктора 

    public void Print()
    {
        Console.WriteLine("Состояние - " + state);
        Console.WriteLine("Длина массива  - " + Length_2);

    }

    public static void PrintCount()
    {
         Console.WriteLine("Статический счетчик  - " + count);
    }

    // Поля
    private const bool x = false;
    private readonly bool TRUE = true; // Значение данному полю нельзя изменить



    // Свойства (Инкапсуляция) (GET,SET)

    public bool state_get_set
    {  
        get // Получения значения поля
        {
            return state;
            


        }

        set // Можем private изменять
        {
            state = value;
        }
        
    }

    // ref out
    public void Print(ref int a, out int b) // По ссылкам работаем
    {
        a = 10; // Адрес переменной
        b = 20;
    }

    /*переопределяете методы класса Object: Equals, для сравнения объектов,
    GetHashCode; для алгоритма вычисления хэша руководствуйтесь
    стандартными рекомендациями, ToString – вывода строки –
    информации об объекте. */

    public override bool Equals(object obj)
    {
        Vector p = obj as Vector;
        if (p as Vector == null)
            return false;
        return (Length_2 == p.Length_2) && (state == p.state);
                   
    }

    //GetHashCode открытый доступ в System.Object
    public override int GetHashCode()
    {
        return Length_2 ^ state.ToString().GetHashCode();
    }

    public override string ToString()
    {
        return "Lenght: " + Length_2 + " State: " + state;
    }

}
