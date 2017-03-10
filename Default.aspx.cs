using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Diagnostics;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    string startdate;
    string enddate;
     protected void OSA(object sender, EventArgs e)
    {
        //Button1.Visible = false;        
        Process process = new Process();
        try
        {
            startdate = TextBox1.Text;
            enddate = TextBox2.Text;
            process.StartInfo.FileName = ConfigurationManager.AppSettings["OSApath"];
            process.StartInfo.Arguments = startdate + " " + enddate;
            process.StartInfo.UseShellExecute = false;
            process.Start();
            process.WaitForExit();
            Thread.Sleep(600);
            System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\OSA.htm");
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
    protected void DM(object sender, EventArgs e)
    {
        Process process = new Process();
        try
        {
            startdate = TextBox1.Text;
            enddate = TextBox2.Text;
            process.StartInfo.FileName = ConfigurationManager.AppSettings["DMpath"];
            process.StartInfo.Arguments = startdate + " " + enddate;
            process.StartInfo.UseShellExecute = false;
            process.Start();
            process.WaitForExit();
            Thread.Sleep(600);
            System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\DM.htm");
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
    protected void IWB(object sender, EventArgs e)
    {
   
        Process process = new Process();
        try
        {
            startdate = TextBox1.Text;
            enddate = TextBox2.Text;
            process.StartInfo.FileName = ConfigurationManager.AppSettings["IWBpath"];
            process.StartInfo.Arguments = startdate + " " + enddate;
            process.StartInfo.UseShellExecute = false;
            process.Start();
            process.WaitForExit();
            Thread.Sleep(600);
            System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\IWB.htm");
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
    protected void DS(object sender, EventArgs e)
    {
        Process process = new Process();
        try
        {
            startdate = TextBox1.Text;
            enddate = TextBox2.Text;
            process.StartInfo.FileName = ConfigurationManager.AppSettings["DSpath"];
            process.StartInfo.Arguments = startdate + " " + enddate;
            process.StartInfo.UseShellExecute = false;
            process.Start();
            process.WaitForExit();
            Thread.Sleep(600);
            System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\DS.htm");
            
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
    protected void OCR(object sender, EventArgs e)
    {
        Process process = new Process();
        try
        {
            startdate = TextBox1.Text;
            enddate = TextBox2.Text;
            process.StartInfo.FileName = ConfigurationManager.AppSettings["OCRpath"];
            process.StartInfo.Arguments = startdate + " " + enddate;
            process.StartInfo.UseShellExecute = false;
            process.Start();
            process.WaitForExit();
            Thread.Sleep(600);
            System.Diagnostics.Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "F:\\Shared\\RSMOutputs\\OCR.htm");

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
