using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading;
using System.Reflection;
using System.Xml;
using System.Text.RegularExpressions;


namespace DAL
{
    public static class Logging
    {
        public static string fileName = "SearnextLog";
        static readonly Decimal sizeOfFile = 1000 ;

        //private static string LogKey = "TRUE";
        //internal static bool IsLog = LogKey != null ? (LogKey.ToUpper() != "TRUE" ? false : true) : false;
        internal static object synclock = new object();

        public static void WriteLog(string contents)
        {
            var sLogPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "SearnextLog");
            if(!Directory.Exists(sLogPath))
            {
                Directory.CreateDirectory(sLogPath);           
            }

            long LengthOfFile = 0;
            FileInfo myFile = new FileInfo(sLogPath);
            var directory = new DirectoryInfo(sLogPath);
            int countOfFile = directory.GetFiles().Length;
            if (countOfFile > 0)
            {
                myFile = (from f in directory.GetFiles()
                          orderby f.LastWriteTime descending
                          select f).First();

                LengthOfFile = myFile.Length;
                LengthOfFile = LengthOfFile / 1024;
            }

            //String MaxFileSize = System.Configuration.ConfigurationManager.AppSettings["maximumFileSize"];

            //var array = Regex.Matches(MaxFileSize, @"\D+|\d+")
            //     .Cast<Match>()
            //     .Select(m => m.Value)
            //     .ToArray();

            //int sizeOfFile = Convert.ToInt32(array[0]);            
            try
            {
                if (LengthOfFile < sizeOfFile)
                {
                    lock (synclock)
                    {
                        if (countOfFile == 0)
                        {
                            sLogPath = Path.Combine(sLogPath, fileName + "_" + DateTime.Now.ToString("MMddyyyy HHmmssfff") + ".txt");
                        }
                        else
                        {
                            sLogPath = Path.Combine(sLogPath, myFile.Name);
                        }
                        File.AppendAllText(sLogPath, DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss:fff"));
                        File.AppendAllText(sLogPath, " ");
                        File.AppendAllText(sLogPath, contents);
                        File.AppendAllText(sLogPath, "-ThreadId-" + Convert.ToString(Thread.CurrentThread.ManagedThreadId));
                        File.AppendAllText(sLogPath, Environment.NewLine);

                    }
                }
                else
                {
                    sLogPath = Path.Combine(sLogPath, fileName + "_" + DateTime.Now.ToString("MMddyyyy HHmmssfff") + ".txt");
                    File.AppendAllText(sLogPath, DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss:fff"));
                    File.AppendAllText(sLogPath, " ");
                    File.AppendAllText(sLogPath, contents);
                    File.AppendAllText(sLogPath, "-ThreadId-" + Convert.ToString(Thread.CurrentThread.ManagedThreadId));
                    File.AppendAllText(sLogPath, Environment.NewLine);
                }
            }
            catch (Exception ex)
            {
                sLogPath = Path.Combine(sLogPath, fileName + DateTime.Now.ToString("MMddyyyy HHmmssfff") + ".txt");
                File.AppendAllText(sLogPath, DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss:fff"));
                File.AppendAllText(sLogPath, " ");
                File.AppendAllText(sLogPath, "Exception in WriteLog-");
                File.AppendAllText(sLogPath, ex.Message);
                File.AppendAllText(sLogPath, "-ThreadId-" + Convert.ToString(Thread.CurrentThread.ManagedThreadId));
                File.AppendAllText(sLogPath, Environment.NewLine);
            }
        }
    }
}
