using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class display : System.Web.UI.Page
{
   SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\aspworks\Registrationdemo\App_Data\Database.mdf;Integrated Security=True");
        con.Open
            ();
        if (!IsPostBack)
        {
            getdata();
        }
        
       
    }
    public void getdata()
    {
     
        string SEL = "SELECT * FROM user_info";
        da = new SqlDataAdapter(SEL, con);
        ds = new DataSet();
        da.Fill(ds);
        grd_disp.DataSource = ds;
        grd_disp.DataBind();
    }

    protected void grd_disp_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_disp.PageIndex = e.NewPageIndex;
        this.getdata();
    }
    protected void grd_disp_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        int id = Convert.ToInt32(grd_disp.DataKeys[e.RowIndex].Values[0]);
        string del = "delete from user_info where Id="+id+"";
        cmd = new SqlCommand(del,con);
        int x=cmd.ExecuteNonQuery();
        if (x > 0)
        {
            getdata();
        }
    }

    protected void grd_disp_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grd_disp.EditIndex = e.NewEditIndex;
        this.getdata();
    }
    protected void grd_disp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grd_disp.EditIndex = -1;
        this.getdata();
    }
    protected void grd_disp_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Id = Convert.ToInt32(grd_disp.DataKeys[e.RowIndex].Values[0]);
        GridViewRow grdrow = (GridViewRow)grd_disp.Rows[e.RowIndex];
        
        TextBox txtfname = (TextBox)grdrow.Cells[1  ].Controls[0];
        TextBox txt_lname = (TextBox)grdrow.Cells[2].Controls[0];
        TextBox txt_uname = (TextBox)grdrow.Cells[3].Controls[0];
        TextBox txt_email = (TextBox)grdrow.Cells[4].Controls[0];
        TextBox txt_pass = (TextBox)grdrow.Cells[5].Controls[0];
        TextBox txt_mno = (TextBox)grdrow.Cells[6].Controls[0];
        TextBox txt_dob = (TextBox)grdrow.Cells[7].Controls[0];

        string upd = "UPDATE user_info SET fname=@fname , lname=@lname , uname=@uname ,  email=@email , pass=@pass , mobile=@mobile , dob=@dob  where Id=" + Id + "";
        cmd = new SqlCommand(upd,con);
        cmd.Parameters.AddWithValue("@fname", txtfname.Text);
        cmd.Parameters.AddWithValue("@lname", txt_lname.Text);
        cmd.Parameters.AddWithValue("@uname", txt_uname.Text);
        cmd.Parameters.AddWithValue("@email", txt_email.Text);
        cmd.Parameters.AddWithValue("@pass", txt_pass.Text);
        cmd.Parameters.AddWithValue("@mobile", txt_mno.Text);
        cmd.Parameters.AddWithValue("@dob", txt_dob.Text);
        int a=cmd.ExecuteNonQuery();
        if(a>0)
        {
            grd_disp.EditIndex = -1;
            this.getdata();
        }
        else
        {
            Response.Write("error updating");
        }
    }
    protected void grd_disp_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        grd_disp.EditIndex = -1;
        this.getdata();
    }
}