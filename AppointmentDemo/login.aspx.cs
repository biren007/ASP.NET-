using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        conn = new SqlConnection(str);
        conn.Open();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        String sel = "SELECT * FROM data WHERE email='"+txt_email.Text+"' AND pass='"+txt_pass.Text+"' ";
        da= new SqlDataAdapter(sel,conn);
        ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            Session["email"] = txt_email.Text;
            Response.Redirect("Appointments.aspx");
        }
        else
        {
            Response.Redirect("Registeration.aspx");
        }
        
    }
}