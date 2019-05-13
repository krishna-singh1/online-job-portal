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
        Label4.Visible = false;
        Label5.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Update [Uprofile] Set password=@t1 where Email=@t2", conn);
        cmd.Parameters.AddWithValue("@t1", TextBox3.Text);
        cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
        int c = cmd.ExecuteNonQuery();
        if (c != 0)
        {
            Response.Redirect("Pass.aspx");
        }*/

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();
            string checkusername = "select count(*) from Uprofile where email='" + TextBox1.Text + "'";
            SqlCommand com1 = new SqlCommand(checkusername, conn);
            int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
            if (temp1 == 1)
            {
                string checkpassword = "select password from Uprofile where email='" + TextBox1.Text + "'";
                SqlCommand com2 = new SqlCommand(checkpassword, conn);
                string pass = com2.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == TextBox2.Text)
                {
                    SqlCommand cmd = new SqlCommand("Update [Uprofile] Set password=@t1 where Email=@t2", conn);
                    cmd.Parameters.AddWithValue("@t1", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@t2", TextBox1.Text);
                    Session["User"] = cmd.ExecuteScalar();
                    Response.Redirect("Pass.aspx");
                }
                else
                {
                    Label5.Visible = true;
                    Label5.Text = "Incorrect password";
                }
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "User doesn't exist";
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("ERROR" + ex.ToString());
        }
    }
}