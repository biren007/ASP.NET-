using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class form : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\aspworks\ddlbind\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        String Sinsert = "INSERT INTO city VALUES (@cname)";
        cmd = new SqlCommand(Sinsert,con);
        cmd.Parameters.AddWithValue("@cname", txt_city.Text);
        cmd.ExecuteNonQuery();
       
    }
}