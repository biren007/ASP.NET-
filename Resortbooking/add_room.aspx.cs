using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class add_room : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\aspworks\Resortbooking\App_Data\Database.mdf;Integrated Security=True");
        con.Open();
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("INSERT INTO admin VALUES(@type,@price );",con);
        cmd.Parameters.AddWithValue("@type",txtroom.Text);
        cmd.Parameters.AddWithValue("@price",txtprice.Text);
        cmd.ExecuteNonQuery();
    }
}