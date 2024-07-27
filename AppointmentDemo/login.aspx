<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          *{
            font-size:25px;
        }
        h2{
            font-size:35px;
        }
        form{
            margin-top:10%;
            display:flex;
            justify-content:center;
        }
        div{
            margin-top:5px;     
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="mdiv">
    <div>
        <asp:Label class="lbl" ID="lbl_email" runat="server" Text="Email :"></asp:Label>
        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label class="lbl" ID="lbl_pass" runat="server" Text="Pass :"></asp:Label>
        <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
    </div>
    <div>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click"/>        
    </div>
    </div>
    </form>
</body>
</html>
