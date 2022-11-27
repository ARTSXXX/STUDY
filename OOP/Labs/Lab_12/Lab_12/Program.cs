using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Lab_12
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("Тест метода GetDiskInfo()");
                APADiskInfo.GetDiskInfo();
                Console.WriteLine("\n\nТест метода GetFileInfo()");
                APAFileInfo.GetFileInfo("E:\\STUDY\\OOP\\Labs\\Lab_12\\Lab_12\\Program.cs");
                Console.WriteLine("\n\nТест метода GetDirInfo()");
                APADirInfo.GetDirInfo("E:\\STUDY\\OOP\\Labs\\Lab_12\\Lab_12");
                Console.WriteLine("\n\nТест метода CreateCopyOfFile()");
                APAFileManager.CreateCopyOfFile("..\\net6.0\\APAInspect\\APAdirinfo.txt");
                Console.WriteLine("\n\nСоздание директория APAFiles");
                APAFileManager.CreateDirectory("..\\net6.0", "APAFiles");
                Console.WriteLine("\n\nКопирование файлов с расширением .dll и .exe в директорию APAFiles");
                APAFileManager.ReplaceTo("..\\net6.0", "APAFiles", ".dll", ".exe");
                Console.WriteLine("\n\nУпаковка в zip-архив APAFiles");
                APAFileManager.CreateZip("APAFiles");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}