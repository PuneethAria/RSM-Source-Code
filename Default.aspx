<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Differential Report Form</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image/x-icon" href="Images/Sharplogo.ico" />
    <script type="text/javascript">
        function isNumberKey(evt) {

            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 45 && (charCode < 48 || charCode > 57)) {
                alert("Please Enter Only Numeric Value:");
                return false;
            }
            return true;
        }

        function checkTextField() {
            var textbox1 = document.getElementById('TextBox1');
            var textbox2 = document.getElementById('TextBox2');
            if (textbox1.value == '' || textbox2.value == '') {
                alert("Please Enter Date In This Format YYYY-MM-DD Only");
                return false;
            }
            return true;
        }
      
   </script>

</head>
<body>
   <form id="form1" runat="server">
        <div class="container" align="center" dir="ltr">
            <div class="title">
                <asp:Label ID="Label1" runat="server" Text="eLoc Report Generation"></asp:Label>
            </div>           
            <div class="controls">
                    <table class="controlsTable">
                        <tr class="extraSpace">
                            <td class="controlsLabel" align="center">From Date :</td>
                            <td><asp:TextBox ID="TextBox1" CssClass="controlsTextBox" PlaceHolder="YYYY-MM-DD" onkeypress="return isNumberKey(event)" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td class="controlsLabel" align="center">To Date :</td>
                            <td><asp:TextBox ID="TextBox2" CssClass="controlsTextBox" PlaceHolder="YYYY-MM-DD" onkeypress="return isNumberKey(event)" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td class="btnsControl" colspan="2">           
                                <asp:Button ID="Button1" runat="server" Text="IWB" CssClass="btns" OnClientClick="return checkTextField();" onclick="IWB"/>
                                <asp:Button ID="Button2" runat="server" Text="OCR" CssClass="btns" OnClientClick="return checkTextField();" onclick="OCR" />               
                                <asp:Button ID="Button3" runat="server" Text="OSA" CssClass="btns" OnClientClick="return checkTextField();" onclick="OSA" />
                                <asp:Button ID="Button4" runat="server" Text="DM" CssClass="btns" OnClientClick="return checkTextField();" onclick="DM" />              
                                <asp:Button ID="Button5" runat="server" Text="DS" CssClass="btns" OnClientClick="return checkTextField();" onclick="DS" />
                            </td>    
                        </tr>
                    </table>
             </div>  
             <div>
                    <p class= "link"> Your Generated Outputs Are In This Location :
                        <asp:Label ID="Label2" runat="server" Visible="false"><a href="file://cpuneeth-PC/Shared/RSMOutputs">D:\Shared\RSMOutputs\</asp:Label></a>
                   </p>
             </div>    
  
            <div class= "footer">      
                    <a target="bottom"> © 2017 Sharp Corporation. All rights reserved</a>
            </div>    

        </div>
        </form >
</body>
</html>
