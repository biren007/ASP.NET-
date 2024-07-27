<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="book_auther.aspx.cs" Inherits="book_auther" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form">
        <div class="mb-3">
            <asp:Label ID="lbl1" runat="server" Text="Auther Name"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_aname" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button CssClass="btn btn-primary" ID="btn_adda" runat="server" Text="Add" OnClick="btn_adda_Click"/>
        </div>
        <div>
            <asp:GridView ID="grd_auth" runat="server" 
                AutoGenerateColumns="false"
                OnRowDeleting="grd_auth_RowDeleting"
                OnRowEditing="grd_auth_RowEditing"
                OnRowCancelingEdit="grd_auth_RowCancelingEdit"
                OnRowUpdating="grd_auth_RowUpdating"
                DataKeyNames="Id">

            </asp:GridView>
        </div>
          
    </div>
</asp:Content>

