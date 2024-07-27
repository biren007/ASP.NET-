<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1>Records</h1></center>
    </div>
        <div style="display:flex; justify-content:center;">
            <asp:GridView ID="grd_disp" runat="server"
                AllowPaging="true" PageSize="5" 
                 OnPageIndexChanging="grd_disp_PageIndexChanging" 
                 AutoGenerateColumns="false" DataKeyNames="Id" OnRowDeleting="grd_disp_RowDeleting" Width="938px"
                 OnRowEditing="grd_disp_RowEditing" OnRowUpdating="grd_disp_RowUpdating"
                OnRowCancelingEdit="grd_disp_RowCancelingEdit1"> 
                <Columns>
                    <asp:BoundField HeaderText="Id" DataField="Id" ReadOnly/>
                    <asp:BoundField HeaderText="First Name" DataField="fname" />
                    <asp:BoundField HeaderText="Last Name" DataField="lname" />
                    <asp:BoundField HeaderText="Username" DataField="uname" />
                    <asp:BoundField HeaderText="Email" DataField="email" />
                    <asp:BoundField HeaderText="Password" DataField="pass"/>
                    <asp:BoundField HeaderText="Mobile" DataField="mobile" />
                    <asp:BoundField HeaderText="Dob" DataField="dob" />
                    
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="true" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
