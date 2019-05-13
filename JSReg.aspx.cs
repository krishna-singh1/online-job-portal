using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class JSReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
       
    }
    protected void Bregister_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();

            string check = "select count(*) from Uprofile where email='" + TBemail.Text + "'";
            SqlCommand com1 = new SqlCommand(check, conn);
            int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());

            string checkphno = "select count(*) from Uprofile where phno='" + TBphno.Text + "'";
            SqlCommand com3 = new SqlCommand(checkphno, conn);
            int temp2 = Convert.ToInt32(com3.ExecuteScalar().ToString());
            if (temp2 > 0)
            {
                Label1.Visible = true;
                Label1.Text = "Phone number is already registered";
            }

            conn.Close();
            
            if (temp > 0)
            {
                Label2.Visible=true;
                Label2.Text="Email already registered";
            }
            else
            {
                conn.Open();
                string insert = "insert into Uprofile (name, email, password, phno, dob, city, gender, degree, exp, field, skills) values (@Name, @Email, @Password, @Phno, @Dob, @City, @Gender, @Degree, @Exp, @Field, @Skills)";
                SqlCommand com2 = new SqlCommand(insert, conn);
                com2.Parameters.AddWithValue("@Name", TBname.Text);
                com2.Parameters.AddWithValue("@Email", TBemail.Text);
                com2.Parameters.AddWithValue("@Password", TBpassword.Text);
                com2.Parameters.AddWithValue("@Phno", TBphno.Text);
                com2.Parameters.AddWithValue("@Dob", TBdob.Text);
                com2.Parameters.AddWithValue("@City", DDcity.SelectedValue);
                com2.Parameters.AddWithValue("@Gender", DDgender.SelectedValue);
                com2.Parameters.AddWithValue("@Degree", DDdegree.SelectedValue);
                com2.Parameters.AddWithValue("@Exp", TBexp.Text);
                com2.Parameters.AddWithValue("@Field", DDField.SelectedValue);
                com2.Parameters.AddWithValue("@Skills", TBSkills.Text);
             
                com2.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("JSRegComplete.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("ERROR" + ex.ToString());
        }
    }


   
}