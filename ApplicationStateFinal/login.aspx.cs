using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        if ((txt_uname.Text != "") && (txt_pass.Text != ""))
        {
            Session["uname"] = txt_uname.Text;
            Session["upass"] = txt_pass.Text;
            Response.Redirect("adminDash.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}