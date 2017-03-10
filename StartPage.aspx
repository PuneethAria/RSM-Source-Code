<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StartPage.aspx.cs" Inherits="StartPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REPORT FORM</title>
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
     <link rel="shortcut icon" type="image/x-icon" href="Images/Sharplogo.ico" />
</head>
<body bgcolor="#d3d3d3">
    <form id="form1" runat="server">
    <div class="container" align="center">
            <h1> RSM Reports</h1><br />
            <h2> Please Click the Report Type</h2>
            <h3>Type 1 :<a href="Total.aspx">Total Metrics Summary </a><br /></h3>
            <h3>Type 2 :<a href="Default.aspx">Code Differentials Between Work Files</a></h3>

           <div class= "footer">      
             <a target="bottom"> © 2017 Sharp Corporation. All rights reserved</a>
           </div>
      </div>  
    </form>  
</body>
</html>
