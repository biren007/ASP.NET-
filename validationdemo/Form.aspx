<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        form{
            margin-top:150px;
        }
        .txt{
               
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="txt">
            <asp:TextBox ID="txt_uname" runat="server" placeholder="Enter Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_uname" runat="server" ControlToValidate="txt_uname" ErrorMessage="Can't leave field empty"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_uname" runat="server" ControlToValidate="txt_uname" ErrorMessage="Only Alphabets Allowed" ValidationExpression="[A-Z a-z]{1,10}"></asp:RegularExpressionValidator>
        </div>
        <div class="txt">
            <asp:TextBox ID="txt_num" runat="server" placeholder="Enter password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_num" runat="server" ControlToValidate="txt_num" ErrorMessage="Can't leave field empty"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_num" runat="server" ControlToValidate="txt_num" ErrorMessage="Only Numbers Allowed" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <asp:RangeValidator ID="rgv" runat="server" ControlToValidate="txt_num" ErrorMessage="range out of bounds" MinimumValue="100000000" MaximumValue="999999999" Type="Integer"></asp:RangeValidator>
        </div>
        <div class="txt">
            <asp:TextBox ID="txt_email" runat="server" placeholder="Enter Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="Can't leave field empty"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter Proper Email" ValidationExpression="[A-Z a-z 0-9]{1,15}"></asp:RegularExpressionValidator>
        </div>
        <div class="txt">
            <asp:TextBox ID="txt_total" runat="server" placeholder="Total Marks"></asp:TextBox>
        </div>
        <div class="txt">
            <asp:TextBox ID="txt_obtained" runat="server" placeholder="obtained marks"></asp:TextBox>
        </div>
        <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txt_obtained" ControlToCompare="txt_total" Type="Integer" Operator="LessThan" ErrorMessage="value can't be greater than the total"></asp:CompareValidator>
        <div class="txt">
            <asp:Button ID="btn_submit" runat="server" Text="SUBMIT" />
        </div>
    </div>
    </form>
</body>
</html>
