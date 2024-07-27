using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class form : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(conn);
        con.Open();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ins = "Insert into userinfo values(@uname,@mobile,@address,@dob,@profile)";
        cmd = new SqlCommand(ins,con);
        string imgname = img.FileName.ToString();
        string imgpath = Server.MapPath("~/profile/");
        img.SaveAs(imgpath + imgname);
        string url = "profile/"+imgname;
        cmd.Parameters.AddWithValue("@uname", txt_uname.Text);
        cmd.Parameters.AddWithValue("@mobile", txt_mobile.Text);
        cmd.Parameters.AddWithValue("@address", txt_address.Text);
        cmd.Parameters.AddWithValue("@dob", txt_dob.Text);
        cmd.Parameters.AddWithValue("@profile",url);


        int a = cmd.ExecuteNonQuery();
        if(a>0)
        {
            Response.Redirect("userprofile.aspx");
        }
        else
        {
            Response.Write("failed");
        }
    }
}