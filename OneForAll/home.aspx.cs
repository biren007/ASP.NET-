using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class home : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        con = new SqlConnection(sqlcon);
        con.Open();

        //string sel = "select * from user_info where email='"+Session["email"].ToString()+"' ";
       
        //txt_uname.Text = ds.Tables[0].Rows[0]["name"].ToString();
        if(!IsPostBack)
        {
            getgrd();
        }
        
    
    }

    public void getgrd()
    {
        string sel = "select * from user_info";
        da = new SqlDataAdapter(sel, con);
        ds = new DataSet();
        da.Fill(ds);
        grd_disp.DataSource = ds;
        grd_disp.DataBind();

    }
    protected void grd_disp_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(grd_disp.DataKeys[e.RowIndex].Values[0]);
        string del = "delete from user_info where id='" + id + "'";
        cmd = new SqlCommand(del,con);
        cmd.ExecuteNonQuery();
        this.getgrd();
    }
    protected void grd_disp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grd_disp.EditIndex = -1;
        this.getgrd();
    }
    protected void grd_disp_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grd_disp.EditIndex = e.NewEditIndex;
        this.getgrd();
    }
    protected void grd_disp_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(grd_disp.DataKeys[e.RowIndex].Values[0]);
        GridViewRow grdrow = (GridViewRow)grd_disp.Rows[e.RowIndex];
        TextBox txtuname = (TextBox)grdrow.Cells[1].Controls[0];
        TextBox txtmno = (TextBox)grdrow.Cells[2].Controls[0];
        TextBox txtemail = (TextBox)grdrow.Cells[3].Controls[0];
        TextBox txtpass = (TextBox)grdrow.Cells[4].Controls[0];
        TextBox txtgen = (TextBox)grdrow.Cells[5].Controls[0];
        TextBox txtcity = (TextBox)grdrow.Cells[6].Controls[0];
       

        string up = "update user_info set name=@name,mobile=@mobile,email=@email,pass=@pass,gender=@gender,city=@city where Id="+id+"";
        cmd = new SqlCommand(up, con);
        cmd.Parameters.AddWithValue("@name",txtuname.Text);
        cmd.Parameters.AddWithValue("@mobile",txtmno.Text);
        cmd.Parameters.AddWithValue("@email",txtemail.Text);
        cmd.Parameters.AddWithValue("@pass",txtpass.Text);
        cmd.Parameters.AddWithValue("@gender",txtgen.Text);
        cmd.Parameters.AddWithValue("@city",txtcity.Text);
      
        cmd.ExecuteNonQuery();
        grd_disp.EditIndex = -1;
        this.getgrd();
    }
}