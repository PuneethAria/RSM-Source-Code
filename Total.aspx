<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Total.aspx.cs" Inherits="Total" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Total Report Form</title>
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" type="image/x-icon" href="Images/Sharplogo.ico" />
</head>
<body bgcolor="#d3d3d3">
    <form id="form1" runat="server">
         <div>
             <center>
                    <h3>Please select The Module And Click on The Submit Button:</h3> 
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Text="DM"></asp:ListItem>
                            <asp:ListItem Text="DS"></asp:ListItem>
                            <asp:ListItem Text="IWB"></asp:ListItem>
                            <asp:ListItem Text="OCR"></asp:ListItem>
                            <asp:ListItem Text="OSA"></asp:ListItem>
                        </asp:DropDownList>
                       <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                     <div>
                            <p class= "link"> Your Generated Outputs Are In This Location :
                                <asp:Label ID="Label2" runat="server" Visible="false"><a href="file://cpuneeth-PC/Shared/RSMOutputs">F:\Shared\RSMOutputs\</asp:Label></a>
                           </p>
                     </div>    
  
                     <div class= "footer">      
                            <a target="bottom"> © 2016 Sharp Corporation. All rights reserved</a>
                     </div> 
               </center>
            </div>
    </form>
</body>
</html>
