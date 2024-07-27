<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="fu_demo" runat="server"/>
    </div>
    <div>
        <asp:Button ID="btn_upload" runat="server" Text="upload" OnClick="btn_upload_Click" />
    </div>
    <div>
        <asp:Label ID="lbl_printmsg" runat="server"></asp:Label>
    </div>
       
    </form>
</body>
</html>
