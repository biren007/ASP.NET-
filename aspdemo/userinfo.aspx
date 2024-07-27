<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userinfo.aspx.cs" Inherits="userinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0px;
            padding:0px;
            font-family:Arial;
            font-size:15px;
        }
       .mdiv{
            margin-top:20px;
            display:flex;
            justify-content:center;
            align-content:center;   
        }
     .lbls{
        display:flex;
        flex-direction:column;
        width:20%;
     }
     .txts{
        
         display:flex;
          flex-direction:column;
          width:25%;
     }
     .lbl{
         margin-top:8px;
     }
     .txt {
         margin-top:5px;
     }
     .rdos{
          margin-top:5px;
     }
     .chks{
          margin-top:5px    ;
     }
     .display{
          display:flex;
          justify-content:center;
          width:100%;
          margin-top:30PX;
     }
   
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="mdiv">
        <div class="lbls">
             <asp:Label Class="lbl" ID="lfname" runat="server" Text="FIRST NAME:"></asp:Label>
             <asp:Label Class="lbl" ID="lmname" runat="server" Text="MIDDLE NAME:"></asp:Label>
             <asp:Label Class="lbl" ID="llname" runat="server" Text="LAST NAME:"></asp:Label>
             <asp:Label Class="lbl" ID="lage" runat="server" Text="AGE:"></asp:Label>
             <asp:Label Class="lbl" ID="ldob" runat="server" Text="DOB:"></asp:Label>
             <asp:Label Class="lbl" ID="laddress" runat="server" Text="ADDRESS:"></asp:Label>
             <asp:Label Class="lbl" ID="lcity" runat="server" Text="CITY:"></asp:Label>
             <asp:Label Class="lbl" ID="lemail" runat="server" Text="EMAIL:"></asp:Label>
             <asp:Label Class="lbl" ID="lgender" runat="server" Text="GENDER:"></asp:Label>
             <asp:Label Class="lbl" ID="lhobby" runat="server" Text="HOBBY:"></asp:Label>
        </div>
        <div class="txts">
            <asp:TextBox Class="txt" ID="fname" runat="server"></asp:TextBox>
            <asp:TextBox Class="txt" ID="mname" runat="server"></asp:TextBox>      
            <asp:TextBox Class="txt" ID="lname" runat="server"></asp:TextBox>       
            <asp:TextBox Class="txt" ID="age" runat="server"></asp:TextBox >          
            <asp:TextBox Class="txt" ID="dob" runat="server"></asp:TextBox>          
            <asp:TextBox Class="txt" ID="address" runat="server"></asp:TextBox>
            <asp:DropDownList Class="txt" ID="ddlcity" runat="server">
                <asp:ListItem Value="0">--select city--</asp:ListItem>
                <asp:ListItem Value="amreli">Amreli</asp:ListItem>
                <asp:ListItem Value="junagadh">Junagadh</asp:ListItem>
                <asp:ListItem Value="gandhinagar">Gandhinagar</asp:ListItem>
                <asp:ListItem Value="rajkot">Rajkot</asp:ListItem>
                <asp:ListItem Value="bhavnagar">Bhavnagar</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox Class="txt" ID="email" runat="server"></asp:TextBox>
          <div class="rdos">
            <asp:RadioButton Class="rdo" GroupName="gender" ID="male" runat="server" Text="male" />
            <asp:RadioButton Class="rdo" GroupName="gender" ID="female" runat="server" Text="female" />
          </div>
          <div class="chks">
            <asp:CheckBox Class="chk" ID="cricket" runat="server" Text="cricket" />
            <asp:CheckBox Class="chk" ID="basketball" runat="server" Text="basketball" />
            <asp:CheckBox Class="chk" ID="swiming" runat="server" Text="swiming" />
          </div>
            <asp:Button class="chk" ID="getdata" runat="server" Text="getdata" OnClick="getdata_Click" />
        </div>
        </div>
       
      
    </form>
</body>
</html>
