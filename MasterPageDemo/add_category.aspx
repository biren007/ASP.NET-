<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form">
        <div class="mb-3">
            <asp:Label ID="lbl1" runat="server" Text="Category Name"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_cname" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button CssClass="btn btn-primary" ID="btn_addc" runat="server" Text="Add" OnClick="btn_addc_Click"/>
        </div>

          <asp:GridView CssClass="table mx-5 my-5" ID="grd_cat"
                 runat="server" AutoGenerateColumns="false"
                    DataKeyNames="Id"
                    OnRowDeleting="grd_cat_RowDeleting"
                     OnRowEditing="grd_cat_RowEditing"
                    OnRowCancelingEdit="grd_cat_RowCancelingEdit"
              OnRowUpdating="grd_cat_RowUpdating"
                    >
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="Id" ReadOnly />
                    <asp:BoundField HeaderText="Name" DataField="c_name" />
              
                    <asp:CommandField ShowDeleteButton="true" />
                    <asp:CommandField ShowEditButton="true" />
                </Columns>
            </asp:GridView>
    </div>
</asp:Content>

