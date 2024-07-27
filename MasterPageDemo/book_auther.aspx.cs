using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class book_auther : System.Web.UI.Page
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

    protected void btn_adda_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into book_auther values('" + txt_aname.Text + "');", con);
        cmd.ExecuteNonQuery();
        getdata();
    }

    public void getdata()
    {
        string selauther = "select * from book_auther";
        da = new SqlDataAdapter(selauther, con);
        ds = new DataSet();
        da.Fill(ds);
        grd_auth.DataSource = ds;
        grd_auth.DataBind();
    }
    protected void grd_auth_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(grd_auth.DataKeys[e.RowIndex].Values[0]);
        string del = "delete from book_auther where Id='" + id + "'";
        cmd = new SqlCommand(del, con);
        int x = cmd.ExecuteNonQuery();
        this.getdata();
    }
    protected void grd_auth_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grd_auth.EditIndex = e.NewEditIndex;
        this.getdata();
    }
    protected void grd_auth_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grd_auth.EditIndex = -1;
        this.getdata();
    }
    protected void grd_auth_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Id = Convert.ToInt32(grd_auth.DataKeys[e.RowIndex].Values[0]);
        GridViewRow grdrow = (GridViewRow)grd_auth.Rows[e.RowIndex];
        TextBox txtaname = (TextBox)grdrow.Cells[1].Controls[0];

        string upd = "UPDATE book_auther SET a_name=@a_name where Id=" + Id + "";
        cmd = new SqlCommand(upd, con);
        cmd.Parameters.AddWithValue("@a_name", txtaname.Text);


        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            grd_auth.EditIndex = -1;
            this.getdata();

        }
        else
        {
            Response.Write("error updating");
        }
    }
}