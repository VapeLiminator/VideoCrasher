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
using System.Diagnostics;
using System.IO;
using System.IO.Compression;


namespace VideoCrasher
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Hide();

            WebClient webClient = new WebClient();

            try
            {
                if (!webClient.DownloadString("https://raw.githubusercontent.com/VapeLiminator/VideoCrasher/main/version.txt").Contains("4.0.3"))
                {
                    if (MessageBox.Show("Looks like there is an update! Do you want to download it?", "Auto-Updater 1.0", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                        using (var client = new WebClient())
                        {
                            System.Threading.Thread.Sleep(3000);
                            Process.Start(@".\uwu.exe");
                            this.Close();
                        }
                    else
                    { 
                        MessageBox.Show("You're up to date!", "Info");
                        Process.Start(@".\VideoCrasher.bat");
                        this.Close();
                    }
                }
                else 
                {
                    MessageBox.Show("You're up to date!", "Info");
                    Process.Start(@".\VideoCrasher.bat");
                    this.Close();
                }
            }
            catch
            {

            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }

        }
    

