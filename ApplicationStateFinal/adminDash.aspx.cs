using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminDash : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["uname"] != null) && (Session["upass"] != null))
        {
            lbl_usersCount.Text = "ONLINE USERS : " + Application["onlineUsers"];
            lbl_uname.Text = "USERNAME : " + Session["uname"];
            lbl_pass.Text = "PASSWORD : " + Session["upass"];
        }
        else
        {
            Server.Transfer("login.aspx");
        }
    }
}