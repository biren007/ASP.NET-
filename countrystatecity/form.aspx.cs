using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    public void get_country()
    {
        ddl_country.Items.Add("india");
        ddl_country.Items.Add("uk");
        ddl_country.Items.Add("us");
        ddl_country.Items.Add("china");
        ddl_country.Items.Add("japan");
        ddl_country.Items.Add("south korea");
    }
    public void get_state()
    {
        ddl_state.Items.Add("guj");
        ddl_state.Items.Add("raj");
        ddl_state.Items.Add("uk1");
        ddl_state.Items.Add("uk2");
        ddl_state.Items.Add("us1");
        ddl_state.Items.Add("us2");
        ddl_state.Items.Add("china1");
        ddl_state.Items.Add("china2");
        ddl_state.Items.Add("jap1");
        ddl_state.Items.Add("jap2");
        ddl_state.Items.Add("sk1");
        ddl_state.Items.Add("sk2");
    }
    public void get_city()
    {
        ddl_city.Items.Add("amreli");
        ddl_city.Items.Add("rajkot");
        ddl_city.Items.Add("bhavnagar");
        ddl_city.Items.Add("gandhinagar");
        ddl_city.Items.Add("vadodara");
        ddl_city.Items.Add("uk1");
        ddl_city.Items.Add("uk2");
        ddl_city.Items.Add("jap1");
        ddl_city.Items.Add("jap2");
        ddl_city.Items.Add("us1");
        ddl_city.Items.Add("us2");
        ddl_city.Items.Add("sk1");
        ddl_city.Items.Add("sk2");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get_country();
            get_state();
            get_city();
        }
    }
    protected void ddl_country_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddl_country.SelectedValue=="india")
        {
            ddl_state.Items.Clear();
            ddl_state.Items.Add("--select state--");
            ddl_state.Items.Add("guj");
            ddl_state.Items.Add("raj");
        }
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddl_state.SelectedValue=="guj")
        {
            ddl_city.Items.Clear();
            ddl_city.Items.Add("amreli");
            ddl_city.Items.Add("rajkot");
            ddl_city.Items.Add("bhavnagar");
            ddl_city.Items.Add("gandhinagar");
            ddl_city.Items.Add("vadodara");
        }
    }
}