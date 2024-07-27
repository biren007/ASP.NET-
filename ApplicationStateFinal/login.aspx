<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-size: 1.3rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: auto auto; background-color: lightblue; text-align: center; width: 50%; padding: 35px;">
        <h2>Login</h2>
        <div>
            <asp:Label ID="lbl_uname" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txt_uname" runat="server" ></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lbl_pass" runat="server" Text="password"></asp:Label>
            <asp:TextBox ID="txt_pass" runat="server" ></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btn_login" runat="server" Text="LOGIN" OnClick="btn_login_Click" />   
        </div>
    </div>
    </form>
</body>
</html>
