<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="Appointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <style>
        *{
            font-size:25px;
        }
        .mdiv{
            display:flex;
            flex-direction:column;
            
        }
        div{
            display:flex;
            justify-content:center; 
        }
    </style>
<head runat="server">
    <title></title>
    <center><h2>Appointment Detail</h2></center>
</head>
<body>
    <form id="form1" runat="server">
        <div class="mdiv">
        <div>
            <asp:Label class="lbl" runat="server" ID="Label1" Text="Appointment No :"></asp:Label>
            <asp:Label class="data" runat="server" ID="lbl_no"></asp:Label>
        </div>
        <div>
            <asp:Label class="lbl" runat="server" ID="Label2" Text="Full Name :"></asp:Label>
            <asp:Label runat="server" ID="lbl_fname"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="Label3" Text="Age :"></asp:Label>
            <asp:Label runat="server" ID="lbl_age"></asp:Label>
        </div>
         <div>
            <asp:Label runat="server" ID="Label10" Text="Gender :"></asp:Label>
            <asp:Label runat="server" ID="lbl_gen"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="Label4" Text="Date :"></asp:Label>
            <asp:Label runat="server" ID="lbl_date"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="Label5" Text="Day :"></asp:Label>
            <asp:Label runat="server" ID="lbl_day"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="Label6" Text="Time :"></asp:Label>
            <asp:Label runat="server" ID="lbl_time"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="Label7" Text="Mobile :"></asp:Label>
            <asp:Label runat="server" ID="lbl_mno"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="Label8" Text="Email :"></asp:Label>
            <asp:Label runat="server" ID="lbl_email"></asp:Label>
        </div>
        <div>
            <asp:Label runat="server" ID="Label9" Text="Pass :"></asp:Label>
            <asp:Label runat="server" ID="lbl_pass"></asp:Label>
        </div>
    <div>
         <a href="logout.aspx">Logout</a>
    </div>
       </div> 
    </form>
</body>
</html>
