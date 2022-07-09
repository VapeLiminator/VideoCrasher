using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.IO;
using System.Diagnostics;
using System.IO.Compression;


namespace ExtractZipTest
    //this was originally just a test, though it ended up going well and so i've done it in the main program.
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Hide();
            // Please, don't forget that the "uwu.exe" file HAS to be called "uwu.exe"
            // If you want to change it, you'll just have to change the name of it in the code.
            // But for it to be easier, please don't change it.
            try
            {

                WebClient webClient = new WebClient();
                using (var client = new WebClient())
                {
                    client.DownloadFile("https://github.com/VapeLiminator/VideoCrasher/blob/main/vc.zip?raw=true", @"vc.zip");
                    // Downloads the main file (aka: the auto updater, and the videocrasher.bat)
                    string zipPath = @".\vc.zip";
                    // selects what zip file ^^
                    string extractPath = @".\";
                    // sets the path to extract it on^^
                    System.Threading.Thread.Sleep(2000);
                    // ^^ leaves some time for "VideoCrasher.exe" to close
                    File.Delete(@".\VideoCrasher.exe");
                    File.Delete(@".\VideoCrasher.bat");
                    // deletes the old files ^^
                    System.Threading.Thread.Sleep(3000);
                    // ^^
                    // just in case there's an error with deleting the files, it'll leave some seconds
                    ZipFile.ExtractToDirectory(zipPath, extractPath);
                    // extracts the zip file ^^
                    File.Delete(@".\vc.zip");
                    // deletes itself after extracting it
                    Process.Start(@".\VideoCrasher.bat");
                    // starts the video crahser
                    this.Close();
                    // closes this process
                }
            }

            catch
            {

            }
        }
    }
}
