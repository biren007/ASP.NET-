using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int count = 0;
        if (Application["pageVisits"] != null)
        {
            count = int.Parse(Application["pageVisits"].ToString());
        }
        count += 1;
        Application["pageVisits"] = count;
        lbl_pageVisits.Text = "Total Visit Of Page is " + count;
    }
}