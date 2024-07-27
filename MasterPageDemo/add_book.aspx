<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_book.aspx.cs" Inherits="add_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form"  style="width:80%;">
        <div class="mb-3">
            <asp:Label ID="lbl1" runat="server" Text="Book Name"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_bname" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
             <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList DataTextField = "c_name" ID="ddl_cat" runat="server" CssClass="form-select">
               <asp:ListItem Value="0"></asp:ListItem>
            </asp:DropDownList>
        </div>
         <div class="mb-3">
            <asp:Label ID="Label1" runat="server" Text="Auther"></asp:Label>
            <asp:DropDownList DataTextField="a_name" ID="ddl_auth" runat="server" CssClass="form-select">

            </asp:DropDownList>
        </div>
         <div class="mb-3 ">
            <asp:Label ID="Label2" runat="server" Text="Published Date"></asp:Label>
            <asp:TextBox CssClass="form-control" TextMode="Date" ID="txt_publish" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3 ">
            <asp:Button CssClass="btn btn-primary" ID="btn_addb" runat="server" Text="Add" OnClick="btn_addb_Click" />
        </div>
        <div class="grd">
            <asp:GridView CssClass="table mx-5 my-5" ID="grd_books"
                 runat="server" AutoGenerateColumns="false"
                
                    DataKeyNames="Id"
                    OnRowDeleting="grd_books_RowDeleting"
                    OnRowEditing="grd_books_RowEditing"
                    OnRowCancelingEdit="grd_books_RowCancelingEdit"
                    OnRowUpdating="grd_books_RowUpdating"
                
                   >
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="Id" ReadOnly />
                    <asp:BoundField HeaderText="Name" DataField="b_name" />
                    <asp:BoundField HeaderText="Category" DataField="b_category" />
                    <asp:BoundField HeaderText="Auther" DataField="b_auther" />
                    <asp:BoundField HeaderText="published on" DataField="b_publish" />
                    <asp:CommandField ShowDeleteButton="true" />
                    <asp:CommandField ShowEditButton="true" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

