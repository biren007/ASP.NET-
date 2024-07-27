<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

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
            margin-top:20px;     
        }
        .lbl{
           display:flex;
           margin-bottom:2px;
        }
    </style>
</head>
<body>
    <center><h2>Appointment Form</h2></center>
    <form id="form1" runat="server">
    <div class="mdiv">
        <div>
            <asp:Label class="lbl" ID="lbl_fname" runat="server" Text="Full Name :"></asp:Label>
            <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label class="lbl" ID="lbl_age" runat="server" Text="Age :"></asp:Label>
            <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label class="lbl" ID="Label4" runat="server" Text="Gender :"></asp:Label>
            <asp:RadioButton ID="rdo_m" runat="server" GroupName="gen" Text="male"/>
            <asp:RadioButton ID="rdo_f" runat="server" GroupName="gen" Text="female"/>
        </div>
        <div>
            <asp:Label class="lbl" ID="Label1" runat="server" Text="Appointment Date :"></asp:Label>
            <asp:TextBox ID="txt_date" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div>
            <asp:Label class="lbl" ID="Label2" runat="server" Text="Appointment Day :"></asp:Label>
            <asp:TextBox ID="txt_day" runat="server" ></asp:TextBox>
        </div>
        <div>
            <asp:Label class="lbl" ID="Label3" runat="server" Text="Appointment Time :"></asp:Label>
            <asp:TextBox ID="txt_time" TextMode="Time" runat="server" ></asp:TextBox>
        </div>
        <div>
            <asp:Label class="lbl" ID="lbl_mno" runat="server" Text="Mobile :"></asp:Label>
            <asp:TextBox ID="txt_mno" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label class="lbl" ID="lbl_email" runat="server" Text="Email :"></asp:Label>
            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label class="lbl" ID="lbl_pass" runat="server" Text="PASS :"></asp:Label>
            <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click"/>  
        </div>
       
    </div>
    </form>
</body>
</html>
