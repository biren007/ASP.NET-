using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Registeration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
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
        String Sel = "SELECT * FROM data WHERE email='"+txt_email.Text+"' AND pass='"+txt_pass.Text+"'";
        da = new SqlDataAdapter(Sel,conn);
        ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count == 0)
        { 
            string gen="";
            if(rdo_m.Checked==true)
            {
                gen="male";
            }
            if(rdo_f.Checked==true)
            {
                gen="female";
            }
            string Insert="INSERT INTO  data VALUES (@fname,@age,@gender,@date,@day,@time,@mno,@email,@pass)";
            cmd = new SqlCommand(Insert,conn);
            cmd.Parameters.AddWithValue("@fname",txt_fname.Text);
            cmd.Parameters.AddWithValue("@age", txt_age.Text);
            cmd.Parameters.AddWithValue("@gender",gen );
            cmd.Parameters.AddWithValue("@date",txt_date.Text);
            cmd.Parameters.AddWithValue("@day", txt_day.Text);
            cmd.Parameters.AddWithValue("@time", txt_time.Text);
            cmd.Parameters.AddWithValue("@mno", txt_mno.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@pass", txt_pass.Text);
            int x=cmd.ExecuteNonQuery();
            if(x>0)
            {
            
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("Registeration.aspx");
            }
        }
        else
        {
            Response.Write("email or pass already exists");
            Response.Redirect("login.aspx");
        }
    }
}