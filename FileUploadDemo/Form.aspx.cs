using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if(fu_demo.HasFile)
        {
            string content = fu_demo.FileContent.ToString();
            string fsize = fu_demo.FileBytes.ToString();
            string fname = fu_demo.FileName.ToString();
            lbl_printmsg.Text = "content: " + content +"     fsize: "+ fsize +"     fname: " + fname;
            Response.Write("<img height='200px' width='300px' alt='img' src='" + fname + "'/>");
        }
        else
        {
            lbl_printmsg.Text = "NO File uploaded";
        }
    }
}