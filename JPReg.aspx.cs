using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class JPReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["User"] = null;
        Session["Company"] = null;
        Label1.Visible = false;
        Label2.Visible = false;
    }
    protected void Bregister_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();

            string check = "select count(*) from Cprofile where cname='" + TBname.Text + "'";
            SqlCommand com1 = new SqlCommand(check, conn);
            int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());

            string checkphno = "select count(*) from Cprofile where phno='" + TBphno.Text + "'";
            SqlCommand com3 = new SqlCommand(checkphno, conn);
            int temp2 = Convert.ToInt32(com3.ExecuteScalar().ToString());
            if (temp2 > 0)
            {
                Label2.Visible = true;
                Label2.Text = "Phone number is already registered";
            }

            conn.Close();

            if (temp > 0)
            {
                Label1.Visible=true;
                Label1.Text = "User already exists";
            }
            else
            {
                conn.Open();
                string insert = "insert into Cprofile (cname, password, hq, phno) values (@Name, @Password, @HQ, @Phno)";
                SqlCommand com2 = new SqlCommand(insert, conn);
                com2.Parameters.AddWithValue("@Name", TBname.Text);
                com2.Parameters.AddWithValue("@Password", TBpassword.Text);
                com2.Parameters.AddWithValue("@HQ", TBhq.Text);
                com2.Parameters.AddWithValue("@Phno", TBphno.Text);
                com2.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("JPRegComplete.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("ERROR" + ex.ToString());
        }
    }
}