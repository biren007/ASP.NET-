using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_addcity_Click(object sender, EventArgs e)
    {
        if(txt_city.Text=="")
        {
            Response.Write("cant left empty");
        }
        else
        {
            ddl_city.Items.Add(txt_city.Text);
        }
    }
}