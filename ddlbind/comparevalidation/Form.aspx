<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #btn_submit {
            width: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txt_total" runat="server" Placeholder="total"/>
    </div> 
    <div>
        <asp:TextBox ID="txt_obtained" runat="server" Placeholder="obtained"/>
    </div>
        <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txt_obtained" ControlToCompare="txt_total" Type="Integer" Operator="LessThan" ErrorMessage="value cant be greater than total"></asp:CompareValidator>
    <div>
       <button id="btn_submit" runat="server" text="click">click</button>
    </div>
    </form>
</body>
</html>
