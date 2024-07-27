<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:TextBox ID="txt_city" runat="server">
       </asp:TextBox>
         <asp:Button ID="btn_addcity" runat="server"  Text="add city" OnClick="btn_addcity_Click"/>     
        
    </div>
        <div>
          <asp:DropDownList ID="ddl_city" runat="server">
              <asp:ListItem Value="0">--select city--</asp:ListItem>
          </asp:DropDownList>
           
        </div>
        <div>
            
        </div>
    </form>
</body>
</html>
