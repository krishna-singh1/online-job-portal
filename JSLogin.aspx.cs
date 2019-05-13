using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class JSLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["User"] = null;
        Session["Company"] = null;
        Label1.Visible = false;
        Label2.Visible = false;
    }
    protected void Blogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();
            string checkusername = "select count(*) from Uprofile where email='" + TBemail.Text + "'";
            SqlCommand com1 = new SqlCommand(checkusername, conn);
            int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
            if (temp1 == 1)
            {
                string checkpassword = "select password from Uprofile where email='" + TBemail.Text + "'";
                SqlCommand com2 = new SqlCommand(checkpassword, conn);
                string pass = com2.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == TBpassword.Text)
                {
                    string findusername = "select name from Uprofile where email='" + TBemail.Text + "'";
                    SqlCommand com3 = new SqlCommand(findusername, conn);
                    Session["User"] = com3.ExecuteScalar();
                    Response.Redirect("JSProfile.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Incorrect password";
                }
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "User doesn't exist";
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("ERROR" + ex.ToString());
        }
    }
}