using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
    }
    protected void login_Click(object sender, EventArgs e)
    {
        if (TB1.Text == "admin" && TBpassword.Text == "admin123")
        {
            Response.Redirect("ViewJS.aspx");
           
        }
        else
        {
            Label3.Visible = true;
            Label3.Text = "Wrong data entered";
        }
    }
}