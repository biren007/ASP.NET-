using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class add_category : System.Web.UI.Page
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
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btn_addc_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into book_cat values('"+txt_cname.Text+"');",con);
        cmd.ExecuteNonQuery();
        getdata();
    }
    public void getdata()
    {
         string selbook = "select * from book_cat";
        da = new SqlDataAdapter(selbook, con);
        ds = new DataSet();
        da.Fill(ds);
        grd_cat.DataSource = ds;
        grd_cat.DataBind();
    }
    protected void grd_cat_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(grd_cat.DataKeys[e.RowIndex].Values[0]);
        string del = "delete from book_cat where Id='" + id + "'";
        cmd = new SqlCommand(del, con);
        int x = cmd.ExecuteNonQuery();
        this.getdata();
    }
    protected void grd_cat_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grd_cat.EditIndex = e.NewEditIndex;
        this.getdata();
    }
    protected void grd_cat_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grd_cat.EditIndex = -1;
        this.getdata();
    }
    protected void grd_cat_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Id = Convert.ToInt32(grd_cat.DataKeys[e.RowIndex].Values[0]);
        GridViewRow grdrow = (GridViewRow) grd_cat.Rows[e.RowIndex];
        TextBox txtcname = (TextBox) grdrow.Cells[1].Controls[0];
      
        string upd = "UPDATE book_cat SET c_name=@c_name where Id=" + Id + "";
        cmd = new SqlCommand(upd, con);
        cmd.Parameters.AddWithValue("@c_name", txtcname.Text);
        

        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            grd_cat.EditIndex = -1;
            this.getdata();

        }
        else
        {
            Response.Write("error updating");
        }
    }
}