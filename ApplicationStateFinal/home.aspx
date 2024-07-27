<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        p {
            font-size: 1.3rem;
        }
        ul {
            font-size: 1.3rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: auto auto; background-color: lightblue; text-align: center; width: 88%; padding: 35px;">
            <div style="display:flex; justify-content:space-between;">
                <h3 align="left"><asp:Label ID="lbl_pageVisits" runat="server"></asp:Label></h3>
                <h3><a href="login.aspx">LOGIN</a></h3>
            </div>
        </div>
    </form>
</body>
</html>
