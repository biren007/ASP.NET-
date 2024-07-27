using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userinfo : System.Web.UI.Page
{
    public string gender="";
    public string hobby ="";
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void getdata_Click(object sender, EventArgs e)
    {
        string varcricket="";
        string varswimming="";
        string varbasketball="";

        if (male.Checked == true){ 
            gender = "male";
        }
        else
        {
            gender = "female";
        }
        if(cricket.Checked==true)
        {
            varcricket = "cricket ";
            hobby = varcricket + varbasketball + varswimming;
        }
        if(basketball.Checked==true)
        {
            varswimming = "swimming ";
            hobby = varcricket + varbasketball + varswimming;
        }
        if(swiming.Checked==true)
        {
            varbasketball = "basketball ";
            hobby = varcricket + varbasketball + varswimming;
        }
        


        Response.Write("<table border='1'>");
            Response.Write("<tr><th>FNAME</th><th>MNAME</th><th>LNAME</th><th>AGE</th><th>DOB</th><th>ADDRESS</th><th>CITY</th><th>EMAIL</th><th>GENDER</th><th>HOBBY</th></tr>");
            Response.Write("<tr><td>" + fname.Text + "</td><td>" + mname.Text + "</td><td>" + lname.Text + "</td> <td>" + age.Text + "</td><td>" + dob.Text + "</td><td>" + address.Text + "</td><td>" + ddlcity.SelectedValue + "</td> <td>" + mname.Text + "</td><td>" + gender + "</td> <td>" + hobby + "</td> </tr>");
         Response.Write("</table>");
    }
}