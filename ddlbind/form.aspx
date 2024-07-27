<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txt_city" runat="server" placeholder="city">
        </asp:TextBox>
        <asp:Button ID="btn_add" runat="server" Text="submit" OnClick="btn_add_Click"/>
    </div>
    <div>
        <asp:DropDownList ID="ddl" runat="server">
            <asp:ListItem Value="0">--chooooooooooooose--</asp:ListItem>
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
