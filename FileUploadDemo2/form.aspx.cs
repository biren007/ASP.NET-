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
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if(fluimg.HasFile)
        {
            string content = fluimg.PostedFile.ContentType;
            Response.Write(content);
            if (content == "image/jpeg")
            {
                string fsize = fluimg.PostedFile.ContentLength.ToString();
                string fname = fluimg.FileName.ToString();
                string filepath = Server.MapPath("~/img/");
                fluimg.SaveAs(filepath+fname);
                img_show.ImageUrl = "/img/" + fname;
            }
            else
            {
               // Response.Write("only jpg allowed");
            }
        }
        else
        {
            Response.Write("no file has choosen");
        }
    }
}