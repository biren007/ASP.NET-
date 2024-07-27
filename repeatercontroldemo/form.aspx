<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        *{
            font-size:25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txt_uname" runat="server" placeholder="Username"></asp:TextBox>
    </div>
    <div>
        <asp:TextBox ID="txt_mobile" runat="server" placeholder="Mobile"></asp:TextBox>
    </div>
    <div>
        <asp:TextBox ID="txt_address" runat="server" placeholder="Address"></asp:TextBox>
    </div>
    <div>
        <asp:TextBox ID="txt_dob" runat="server" TextMode="Date"></asp:TextBox>
    </div>
        <asp:FileUpload ID="img" runat="server"  />
        
    <div>
        <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click"/>
    </div>
    </form>
</body>
</html>
