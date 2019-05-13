using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class JPLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label1.Visible = false;
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();
            string checkusername = "select count(*) from Cprofile where cname='" + TBname.Text + "'";
            SqlCommand com1 = new SqlCommand(checkusername, conn);
            int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
            if (temp1 >0)
            {
                string checkpassword = "select password from Cprofile where cname='" + TBname.Text + "'";
                SqlCommand com2 = new SqlCommand(checkpassword, conn);
                string pass = com2.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == TBpassword.Text)
                {
                    Session["Company"] = TBname.Text;
                    Response.Redirect("JPProfile.aspx");
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