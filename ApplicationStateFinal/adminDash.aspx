<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminDash.aspx.cs" Inherits="adminDash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div >
        <div>
                <h2 align="left"><asp:Label ID="lbl_usersCount" runat="server"></asp:Label></h2>
                <h2><a href="logout.aspx">LOGOUT</a></h2>
            </div>
       
        <h3><asp:Label ID="lbl_uname" runat="server"></asp:Label></h3>
        <h3><asp:Label ID="lbl_pass" runat="server"></asp:Label></h3>
    </div>
    </form>
</body>
</html>
