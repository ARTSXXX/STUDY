using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_4
{
    abstract class Weapon
    {

        public abstract void Fire(); // Абстрактный одноименный метод 

    }


    class Pistol : Weapon, InterfacePlayer
    {
        public override void Fire() // Для переопределния метода в классе-наследнике - override, виртуальны тот который переопределяем
        {
            Console.WriteLine("Выстрел!");  
            
        }
        
    }

    class Player : InterfacePlayer{ 
    
        public void Fire (Weapon weapon) // Обязательно используем абстрактный метод
        {

            weapon.Fire();
            
        }

        void InterfacePlayer.Run() => Console.WriteLine("Личный интерфейс");
    }

    interface InterfacePlayer { // Для связи объектов, и дальнейшего польльзования.
        void Run() // Одноименныйы метод
        {
            
        }
    }




}
