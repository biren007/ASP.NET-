<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="col-6 mt-2">
            <asp:TextBox ID="txt_email" runat="server" placeholder="email" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-6 mt-2">
            <asp:TextBox ID="txt_pass" runat="server" placeholder="pass" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="col-6 mt-5">
            <asp:Button CssClass="btn btn-primary" ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click"  />
         </div>
    </div>
    </form>
</body>
</html>
