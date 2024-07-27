<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
         <h3>Welcome user <asp:Label ID="txt_uname" runat="server"></asp:Label></h3>
    </div>
        <div>
            <asp:GridView 
                OnRowDeleting="grd_disp_RowDeleting" OnRowCancelingEdit="grd_disp_RowCancelingEdit"
                OnRowEditing="grd_disp_RowEditing" OnRowUpdating="grd_disp_RowUpdating"
                
                ID="grd_disp" runat="server" AutoGenerateColumns="false" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField HeaderText="Username" DataField="name" />
                    <asp:BoundField HeaderText="Mobile" DataField="mobile" />
                    <asp:BoundField HeaderText="Email" DataField="email" />
                    <asp:BoundField HeaderText="Password" DataField="pass" />
                    <asp:BoundField HeaderText="Gender" DataField="gender" />
                    <asp:BoundField HeaderText="city" DataField="city" />
                   
                    <asp:ImageField DataImageUrlField="profile" ></asp:ImageField>
                    <asp:CommandField ShowDeleteButton="true" />
                    <asp:CommandField ShowEditButton="true" />
                   
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
