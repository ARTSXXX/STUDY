using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Lab_12
{
    static class APADiskInfo
    {
        public static void GetDiskInfo()
        {
            DriveInfo[] infs = DriveInfo.GetDrives();
            foreach (DriveInfo inff in infs)
            {
                Console.WriteLine($"Имя диска : {inff.Name}");
                Console.WriteLine($"Свободное место на диске : {inff.AvailableFreeSpace}");
                Console.WriteLine($"Файловая система : {inff.DriveFormat}");
                if (inff.IsReady)
                {
                    Console.WriteLine($"Объем диска: {inff.TotalSize}");
                    Console.WriteLine($"Свободное пространство: {inff.TotalFreeSpace}");
                    Console.WriteLine($"Метка: {inff.VolumeLabel}");
                }
            }
            APALog.WriteToFile(MethodBase.GetCurrentMethod().Name, MethodBase.GetCurrentMethod().DeclaringType.Name);
        }
    }
}