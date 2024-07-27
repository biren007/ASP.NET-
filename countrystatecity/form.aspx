<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .mdiv{
            display:flex;
            justify-content:center;
            margin-top:120px;
        }
        .ddl{
            margin-top:5px;
            flex-direction:column;
        }
        .ddls{
            display:flex;
            flex-direction:column;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="mdiv">
        <div class="ddls">
            <asp:DropDownList class="ddl" ID="ddl_country" runat="server" OnSelectedIndexChanged="ddl_country_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="0">--select country--</asp:ListItem>
            </asp:DropDownList>
        
            <asp:DropDownList class="ddl" ID="ddl_state" runat="server" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="0">--select state--</asp:ListItem>
            </asp:DropDownList>
        
            <asp:DropDownList class="ddl" ID="ddl_city" runat="server">
                <asp:ListItem Value="0">--select city--</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    </form>
</body>
</html>
