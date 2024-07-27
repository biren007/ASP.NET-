<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_room.aspx.cs" Inherits="add_room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        *{
            font-size:20px;
        }
        .mdiv{
            display:flex;
            justify-content:center;
        }
        div{
            margin-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="mdiv"></div>
    <div>
        <asp:TextBox ID="txtroom" runat="server" placeholder="Room Type"></asp:TextBox>
    </div>
    <div>
        <asp:TextBox ID="txtprice" runat="server" placeholder="Room Price"></asp:TextBox>
    </div>
    <div>
            <asp:Button ID="btn_add" runat="server" Text="ADD ROOM" OnClick="btn_add_Click" />
    </div>
    </div>
    </form>
</body>
</html>
