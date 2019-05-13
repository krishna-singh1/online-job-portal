using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Session["User"] = null;
            Response.Redirect("Default.aspx");
        }
        if (Session["Company"] != null)
        {
            Session["Company"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}
