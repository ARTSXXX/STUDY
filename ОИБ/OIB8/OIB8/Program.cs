using System;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;


// все файлы в OIB8\bin\Debug\net6.0
namespace OIB8;

static class Encryptor
{
    public static string Encrypt(string SimpleText, out string keyBase64, out string vectorBase64)
    {
        using (Aes Algoriythm_AES_128 = Aes.Create())
        {
            Algoriythm_AES_128.KeySize = 128;
            Console.WriteLine($"Aes Shiphr Mode : {Algoriythm_AES_128.Mode}");
            Console.WriteLine($"Aes Padding Mode: {Algoriythm_AES_128.Padding}");
            Console.WriteLine($"Aes Key Size : {Algoriythm_AES_128.KeySize}");
            Console.WriteLine($"Aes Blocking Size : {Algoriythm_AES_128.BlockSize}");

            //set the parameters with out keyword
            keyBase64 = Convert.ToBase64String(Algoriythm_AES_128.Key);
            vectorBase64 = Convert.ToBase64String(Algoriythm_AES_128.IV);
            File.WriteAllText("encryptKey.txt", keyBase64);
            File.WriteAllText("Ivector.txt", vectorBase64);

            // Create encryptor object
            ICryptoTransform encryptor = Algoriythm_AES_128.CreateEncryptor();

            byte[] encryptedData;

            //Encryption will be done in a memory stream through a CryptoStream object
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor, CryptoStreamMode.Write))
                {
                    using (StreamWriter sw = new StreamWriter(cs))
                    {
                        sw.Write(SimpleText);
                    }
                    encryptedData = ms.ToArray();
                }
            }
            File.WriteAllText("encryptedData.txt", Convert.ToBase64String(encryptedData));
            return Convert.ToBase64String(encryptedData);
        }

    }
    public static string Decrypte(string ShiphrText, string keyBase64, string vectorBase64)
    {
        using (Aes Algoriythm_AES_128 = Aes.Create())
        {
            Algoriythm_AES_128.Key = Convert.FromBase64String(keyBase64);
            Algoriythm_AES_128.IV = Convert.FromBase64String(vectorBase64);
            
            Console.WriteLine($"Ases Cipher Mode : {Algoriythm_AES_128.Mode}");
            Console.WriteLine($"Aes Padding Mode: {Algoriythm_AES_128.Padding}");
            Console.WriteLine($"Aes Key Size : {Algoriythm_AES_128.KeySize}");
            Console.WriteLine($"Aes Block Size : {Algoriythm_AES_128.BlockSize}");

            // Create decryptor object
            ICryptoTransform decryptor = Algoriythm_AES_128.CreateDecryptor();

            byte[] cipher = Convert.FromBase64String(ShiphrText);

            //Decryption will be done in a memory stream through a CryptoStream object
            using (MemoryStream ms = new MemoryStream(cipher))
            {
                using (CryptoStream cs = new CryptoStream(ms, decryptor, CryptoStreamMode.Read))
                {
                    using (StreamReader sr = new StreamReader(cs))
                    {
                        return sr.ReadToEnd();
                    }
                }
            }
        }
    }
}
class Program {
   static void Main(string[] args)
    {
        Console.WriteLine("Введите текст который вы хотите зашифровать:");
        string SimpleText = Console.ReadLine();
        string ShiphrText = Encryptor.Encrypt(SimpleText, out string keyBase64, out string vectorBase64);

        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("Зашифрованный текст:");
        Console.WriteLine(ShiphrText);

        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("Ключ шифрование в виде строки:");
        Console.WriteLine(keyBase64);

        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("Вектор инициализации (IV) в виде строки:");
        Console.WriteLine(vectorBase64);

        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("Расшифрованное сообщение: "+Encryptor.Decrypte(ShiphrText, keyBase64, vectorBase64));
        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("--------------------------------------------------------------");
        Console.WriteLine("Вычесленый хэш из файла hashmessage.txt: "+GetMD5Hash()); // ключ можно менять в файле или передавать данные в параметры


    }

    static string GetMD5Hash(string? input = null, string? key = null)
    {
        input = input ?? File.ReadAllText("Hashirov_Messages.txt");
        key = key ?? File.ReadAllText("KEY_HASH.txt");
        HMACMD5 md5 = new HMACMD5(Encoding.UTF8.GetBytes(key));
        var hash = md5.ComputeHash(Encoding.UTF8.GetBytes(input));
        File.WriteAllBytes("BYTE_ON_HASH.txt", hash);
        File.WriteAllText("String_HASH", Convert.ToBase64String(hash));
        return Convert.ToBase64String(hash);
    }
}

