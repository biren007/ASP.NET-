<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="fluimg" runat="server" />
    </div>
    <div>
        <asp:Button ID="btn_upload" runat="server" Text="Upload" OnClick="btn_upload_Click" />
    </div>
    <div>
        <asp:Image runat="server" ID="img_show" height="200" Width="400"/>
    </div>
    </form>
</body>
</html>
