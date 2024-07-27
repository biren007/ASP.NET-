using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class add_book : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            string s = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(s);
            con.Open();
            if (!IsPostBack)
            {
                getdata();
                getddl();
                getddl2();
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btn_addb_Click(object sender, EventArgs e)
    {
        string ins = "insert into book_info values(@b_name,@b_category,@b_auther,@b_publish)";
        cmd = new SqlCommand(ins,con);
        cmd.Parameters.AddWithValue("@b_name",txt_bname.Text);
        cmd.Parameters.AddWithValue("@b_category",ddl_cat.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@b_auther", ddl_auth.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@b_publish", txt_publish.Text);
        cmd.ExecuteNonQuery();
        getdata();
    }
  
    protected void grd_books_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(grd_books.DataKeys[e.RowIndex].Values[0]);
        string del = "delete from book_info where Id='" + id + "'";
        cmd = new SqlCommand(del, con);
        int x = cmd.ExecuteNonQuery();
        this.getdata();
    }
    protected void grd_books_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grd_books.EditIndex = e.NewEditIndex;
        this.getdata();
    }

    protected void grd_books_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grd_books.EditIndex = -1;
        this.getdata();
    }
    protected void grd_books_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Id = Convert.ToInt32(grd_books.DataKeys[e.RowIndex].Values[0]);
        GridViewRow grdrow = (GridViewRow)grd_books.Rows[e.RowIndex];

        TextBox txtbname = (TextBox)grdrow.Cells[1].Controls[0];
        TextBox txtcategory = (TextBox)grdrow.Cells[2].Controls[0];
        TextBox txtauther = (TextBox)grdrow.Cells[3].Controls[0];
        TextBox txtpublish = (TextBox)grdrow.Cells[4].Controls[0];
  

       
        string upd = "UPDATE book_info SET b_name=@b_name , b_category=@b_category , b_auther=@b_auther , b_publish=@b_publish where Id=" + Id + "";
        cmd = new SqlCommand(upd, con);
        cmd.Parameters.AddWithValue("@b_name", txtbname.Text);
        cmd.Parameters.AddWithValue("@b_category", txtcategory.Text);
        cmd.Parameters.AddWithValue("@b_auther", txtauther.Text);
        cmd.Parameters.AddWithValue("@b_publish", txtpublish.Text);
        

        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            grd_books.EditIndex = -1;
            this.getdata();

        }
        else
        {
            Response.Write("error updating");
        }
    }
    public void getdata()
    {
        string selbook = "select * from book_info";
        da = new SqlDataAdapter(selbook, con);
        ds = new DataSet();
        da.Fill(ds);
        grd_books.DataSource = ds;
        grd_books.DataBind();
    }
    public void getddl()
    {
        string sel = "select * from book_cat";
        da = new SqlDataAdapter(sel, con);
        ds = new DataSet();
        da.Fill(ds);
        ddl_cat.DataSource = ds;
        ddl_cat.DataBind();
    }
    public void getddl2()
    {
        string sel2 = "select * from book_auther";
        da = new SqlDataAdapter(sel2, con);
        ds = new DataSet();
        da.Fill(ds);
        ddl_auth.DataSource = ds;
        ddl_auth.DataBind();
    }
}