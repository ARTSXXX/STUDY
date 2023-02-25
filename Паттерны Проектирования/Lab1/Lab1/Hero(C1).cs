using System;

namespace Lab1
{
    class Hero
    {
        #region Const
        private const string Name = "Quicksand";
        public const string Race = "Dire";
        protected const string State = "Agility";
        #endregion

        #region Fields
        private int AgilityCount;
        public int StrenghtCount;
        protected int IntelligenceCount;
        #endregion

        #region Properties 
        private int SpeedHero { get; set; } = 300;
        public int DamageHero { get; set; } = 72;
        protected int HealthHero { get; set; } = 720;
        #endregion

        #region Constructs
        public Hero()
        {

        }

        public Hero(int AgilityCount, int StrenghtCount, int Intelligence)
        {
            this.AgilityCount = AgilityCount;
            this.StrenghtCount = StrenghtCount;
            this.IntelligenceCount = Intelligence;
        }

        public Hero(Hero hero)
        {
            this.AgilityCount = hero.AgilityCount;
            this.StrenghtCount = hero.StrenghtCount;
            this.IntelligenceCount = hero.IntelligenceCount;
        }
        #endregion

        #region Methods
        private void DemoAgility()
        {
            Console.WriteLine(AgilityCount);
        }

        public void DemoSthrength()
        {
            Console.WriteLine("Начальная сила персонажа – " + StrenghtCount);
        }

        protected void DemoIntelligence()
        {
            Console.WriteLine(IntelligenceCount);
        }
        #endregion
    }

    interface IAttackMove
    {
        #region Properties
        bool TrueAttack {set;}
        #endregion

        #region Method and event
        public void Move ()
        {
            
        }
        public event EventHandler BuyItem;
        #endregion

        #region Indexer
        public string this[int index]
        {
            get;
            set;
        }
        #endregion

    }
}
