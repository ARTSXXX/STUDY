using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Lab1
{
    class Lepriccon : IAttackMove
    {
        #region Const
        private const string Name = "Lepriccon";
        public const string Race = "Dire";
        protected const string State = "Agility";
        #endregion

        #region Fields
        private int AgilityCount;
        public int StrenghtCount;
        protected int IntelligenceCount;

        public event EventHandler BuyItem;
        #endregion

        #region Properties 
        private int SpeedHero { get; set; } = 360;
        public int DamageHero { get; set; } = 62;
        protected int HealthHero { get; set; } = 620;
        #endregion

        #region Constructs
        public Lepriccon()
        {

        }

        public Lepriccon(int AgilityCount, int StrenghtCount, int Intelligence)
        {
            this.AgilityCount = AgilityCount;
            this.StrenghtCount = StrenghtCount;
            this.IntelligenceCount = Intelligence;
        }
        #endregion

        #region Methods
        private void DemoAgility()
        {
            Console.WriteLine(AgilityCount);
        }

        public void DemoSthrength()
        {
            Console.WriteLine("Начальная сила персонажа – " + Name + " " + StrenghtCount);
        }

        protected void DemoIntelligence()
        {
            Console.WriteLine(IntelligenceCount);
        }
        #endregion

        #region Реализация интерфейса
        public bool TrueAttack
        {
            set
            {
                if (IntelligenceCount > 0)
                {
                    Console.WriteLine("heroes attack");
                    value = true;
                }
                else
                {
                    value = false;
                    throw new Exception("Not attack");
                }
            }
        }
        public string this[int index] { get => throw new NotImplementedException(); set => throw new NotImplementedException();}
        public void Move ()
        {
            Console.WriteLine("Hero move");
        }
        #endregion



    }

}
