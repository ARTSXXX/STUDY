using System;
namespace Lab1
{
    class Program
    {
        static void Main()
        {
            Hero Quicksand = new Hero(10, 5, 7);
            Quicksand.StrenghtCount += Quicksand.StrenghtCount;
            Quicksand.DemoSthrength();

            Console.WriteLine($"Damage {Quicksand.DamageHero}");

            #region Demonstation class Lepriccon 
            Lepriccon lepriccon = new Lepriccon();
            lepriccon.Move();
            Lepriccon Lepri = new Lepriccon(5, 15, 4);
            Lepri.StrenghtCount += Quicksand.StrenghtCount;
            Lepri.DemoSthrength();
            #endregion

            #region Demonstration C3 & C4 
            Artefact ArtefactSlotFirst = new Artefact("Magick Stick");
            ArtefactSlotFirst.BuyItem();
            ArtefactSlotFirst.SaleItem();
            #endregion
        }
    }
}