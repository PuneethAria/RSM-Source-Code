using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Diagnostics;
using System.Configuration;

public partial class Total : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //page loads here
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var Selcteditem = DropDownList1.SelectedItem.Text;
        switch (Selcteditem)
        {
            case "DM":
                DMTotal();
                break;
            case "DS":
                DSTotal();
                break;
            case "IWB":
                IWBTotal();
                break;
            case "OCR":
                OCRTotal();
                break;
            case "OSA":
                OSATotal();
                break;
        }
    }
            public void DMTotal()
            {
                Process process = new Process();
                try
                {
                    process.StartInfo.FileName = ConfigurationManager.AppSettings["DMTotalpath"];
                    process.StartInfo.UseShellExecute = false;
                    process.Start();
                    process.WaitForExit();
                    Thread.Sleep(600);
                    System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\DMtotal.htm");
                }
                catch (Exception ex)
                {
                    Console.Error.WriteLine("Exception is thrown from : ", ex.Message, ex.StackTrace);
                }
                finally
                {
                    Label2.Visible = true;
                    process.Close();
                }
            }

            public void DSTotal()
            {
                Process process = new Process();
                try
                {
                    process.StartInfo.FileName = ConfigurationManager.AppSettings["DSTotalpath"];
                    process.StartInfo.UseShellExecute = false;
                    process.Start();
                    process.WaitForExit();
                    Thread.Sleep(600);
                    System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\DStotal.htm");
                }
                catch (Exception ex)
                {
                    Console.Error.WriteLine("Exception is thrown from : ", ex.Message, ex.StackTrace);
                }
                finally
                {
                    Label2.Visible = true;
                    process.Close();
                }
            }

            public void IWBTotal()
            {
                Process process = new Process();
                try
                {
                    process.StartInfo.FileName = ConfigurationManager.AppSettings["IWBTotalpath"];
                    process.StartInfo.UseShellExecute = false;
                    process.Start();
                    process.WaitForExit();
                    Thread.Sleep(600);
                    System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\IWBtotal.htm");
                }
                catch (Exception ex)
                {
                    Console.Error.WriteLine("Exception is thrown from : ", ex.Message, ex.StackTrace);
                }
                finally
                {
                    Label2.Visible = true;
                    process.Close();
                }
            }

            public void OCRTotal()
            {
                Process process = new Process();
                try
                {
                    process.StartInfo.FileName = ConfigurationManager.AppSettings["OCRTotalpath"];
                    process.StartInfo.UseShellExecute = false;
                    process.Start();
                    process.WaitForExit();
                    Thread.Sleep(600);
                    System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\OCRtotal.htm");
                } catch (Exception ex)
                {
                    Console.Error.WriteLine("Exception is thrown from : ", ex.Message, ex.StackTrace);
                }
                finally
                {
                    Label2.Visible = true;
                    process.Close();
                }
            }
            
            public void OSATotal()
            {
                Process process = new Process();
                try
                {
                    process.StartInfo.FileName = ConfigurationManager.AppSettings["OSATotalpath"];
                    process.StartInfo.UseShellExecute = false;
                    process.Start();
                    process.WaitForExit();
                    Thread.Sleep(600);
                    System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\OSAtotal.htm");
                }
                 catch (Exception ex)
                {
                    Console.Error.WriteLine("Exception is thrown from : ", ex.Message, ex.StackTrace);
                }
                finally
                {
                    Label2.Visible = true;
                    process.Close();
                }
            }
}