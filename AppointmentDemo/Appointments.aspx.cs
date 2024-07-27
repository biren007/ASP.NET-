using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Appointments : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(str);
        conn.Open();
        if (Session["email"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            getdata();

        }
       
    }
    public void getdata()
    {
        String sel="SELECT * FROM data WHERE email='"+Session["email"].ToString()+"'";
        da = new SqlDataAdapter(sel,conn);
        ds=new DataSet();
        da.Fill(ds);

        lbl_no.Text = ds.Tables[0].Rows[0][0].ToString();
        lbl_fname.Text = ds.Tables[0].Rows[0][1].ToString();
        lbl_age.Text = ds.Tables[0].Rows[0][2].ToString();
        lbl_gen.Text = ds.Tables[0].Rows[0][3].ToString();
        lbl_date.Text = ds.Tables[0].Rows[0][4].ToString();
        lbl_day.Text = ds.Tables[0].Rows[0][5].ToString();
        lbl_time.Text = ds.Tables[0].Rows[0][6].ToString();
        lbl_mno.Text = ds.Tables[0].Rows[0][7].ToString();
        lbl_email.Text = ds.Tables[0].Rows[0][8].ToString();
        lbl_pass.Text = ds.Tables[0].Rows[0][9].ToString();
    }

}